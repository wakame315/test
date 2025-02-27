//===============================================
//
// 生成の管理処理 (manager.cpp)
// Author : 後藤慎之助
//
//===============================================

//========================
// インクルードファイル
//========================
#include "manager.h"
#include "scene2d.h"
#include "renderer.h"
#include "input.h"
#include "sound.h"
#include "mode.h"
#include "title.h"
#include "game.h"
#include "ui.h"
#include <typeinfo.h>
#include "fade.h"
#include "light.h"
#include "camera.h"
#include "bg.h"
#include "character.h"
#include "block.h"
#include "effect3d.h"
#include "field.h"
#include "effect.h"
#include "number.h"
#include "result.h"
#include "manual.h"
#include "CreateStage.h"

//========================================
// マクロ定義
//========================================

//========================================
// 静的メンバ変数宣言
//========================================
CRenderer *CManager::m_pRenderer = NULL;
CInputKeyboard *CManager::m_pInputKeyboard = NULL;
CInputJoypad *CManager::m_pInputJoypad = NULL;
CSound *CManager::m_pSound = NULL;
CMode *CManager::m_pMode = NULL;
CFade *CManager::m_pFade = NULL;
CCamera *CManager::m_pCamera = NULL;
CLight *CManager::m_pLight = NULL;
CMouse* CManager::m_pMouse = NULL;
CCreateStage* CManager::m_pCreateStage = NULL;

//========================================
// 生成の管理のデフォルトコンストラクタ
//========================================
CManager::CManager()
{

}

//========================================
// 生成の管理のデストラクタ
//========================================
CManager::~CManager()
{

}

//========================================
// 生成の管理の初期化処理
//========================================
HRESULT CManager::Init(HINSTANCE hInstance, HWND hWnd, bool bWindow)
{
	//ステージ制作用ポインタの生成
	m_pCreateStage = new CCreateStage;
	//マウスの生成
	m_pMouse = new CMouse;
    // レンダラーの生成(一回しか生成しないものは、Createを用意していない)
    m_pRenderer = new CRenderer;

	if (m_pCreateStage->Init() == E_FAIL) {
		return E_FAIL;
	}
	if (m_pMouse->Init(hInstance, hWnd) == E_FAIL)
	{
		return E_FAIL;
	}
    // レンダラー初期化処理
    if (FAILED(m_pRenderer->Init(hWnd, bWindow)))
    {
        return E_FAIL;
    }

    // キーボードの生成(newとInitは連続させて書く)
    m_pInputKeyboard = new CInputKeyboard;

    // キーボードの初期化処理
    if (FAILED(m_pInputKeyboard->Init(hInstance, hWnd)))
    {
        return E_FAIL;
    }

    // コントローラの生成
    m_pInputJoypad = new CInputJoypad;

    // コントローラの初期化処理
    if (FAILED(m_pInputJoypad->Init(hInstance, hWnd)))
    {
        return E_FAIL;
    }

    // サウンドの生成
    m_pSound = new CSound;
    if (FAILED(m_pSound->Init(hWnd)))
    {
        return E_FAIL;
    }

    // ライトの生成
    m_pLight = new CLight;
    if (FAILED(m_pLight->Init()))
    {
        return E_FAIL;
    }

    // カメラの生成
    m_pCamera = new CCamera;
    if (FAILED(m_pCamera->Init()))
    {
        return E_FAIL;
    }

    // フェードの生成
    m_pFade = CFade::Create(MODE_GAME);    // 最初はタイトル

    // テクスチャのロード
    CUI::Load();
    CNumber::Load();
    CCharacter::Load();
    CBg::Load();
    CBlock::Load();
    CEffect::Load();
    CEffect3D::Load();
    CField::Load();

    return S_OK;
}

//========================================
// 生成の管理の終了処理
//========================================
void CManager::Uninit(void)
{
    // 全てのオブジェクトを破棄
    CScene::ReleaseAll();

    // テクスチャのアンロード
    CUI::Unload();
    CNumber::Unload();
    CCharacter::Unload();
    CBg::Unload();
    CBlock::Unload();
    CEffect::Unload();
    CEffect3D::Unload();
    CField::Unload();

    // モード破棄
    if (m_pMode != NULL)
    {
        // モードの終了処理
        m_pMode->Uninit();

        // モードのメモリの開放
        delete m_pMode;
        m_pMode = NULL;
    }

    // フェード破棄
    if (m_pFade != NULL)
    {
        // フェードの終了処理
        m_pFade->Uninit();

        // フェードのメモリの開放
        delete m_pFade;
        m_pFade = NULL;
    }

    // サウンド破棄
    if (m_pSound != NULL)
    {
        // サウンド終了処理
        m_pSound->Uninit();

        // サウンドのメモリの開放
        delete m_pSound;
        m_pSound = NULL;
    }

    // コントローラ破棄
    if (m_pInputJoypad != NULL)
    {
        // コントローラ終了処理
        m_pInputJoypad->Uninit();

        // コントローラのメモリの開放
        delete m_pInputJoypad;
        m_pInputJoypad = NULL;
    }

    // キーボード破棄（Initで生成した逆順で破棄する）
    if (m_pInputKeyboard != NULL)
    {
        // キーボード終了処理
        m_pInputKeyboard->Uninit();

        // キーボードのメモリの開放
        delete m_pInputKeyboard;
        m_pInputKeyboard = NULL;
    }

    // レンダラー破棄
    if (m_pRenderer != NULL)
    {
        // レンダラー終了処理
        m_pRenderer->Uninit();

        // レンダラーのメモリの開放
        delete m_pRenderer;
        m_pRenderer = NULL;
    }

	//マウスの破棄
	if (m_pMouse != NULL) {
		// マウス終了処理
		m_pMouse->Uninit();

		// マウスのメモリの開放
		delete m_pMouse;
		m_pMouse = NULL;
	}

	//ステージ制作用ポインタの破棄
	if (m_pCreateStage != NULL) {
		// ステージ制作用ポインタ終了処理
		m_pCreateStage->Uninit();

		// ステージ制作用ポインタのメモリの開放
		delete m_pCreateStage;
		m_pCreateStage = NULL;
	}

}

//========================================
// 生成の管理の更新処理
//========================================
void CManager::Update(void)
{
	//マウスの更新処理
	if (m_pMouse != NULL) {
		m_pMouse->Update();
	}

	// コントローラ更新処理
	if (m_pInputJoypad != NULL)
	{
		m_pInputJoypad->Update();
	}
    // キーボード更新処理
    if (m_pInputKeyboard != NULL)
    {
        m_pInputKeyboard->Update();
    }

    // レンダラー更新処理
    if (m_pRenderer != NULL)
    {
        m_pRenderer->Update();
    }
	//ステージ制作用ポインタの更新
	if (m_pCreateStage != NULL) {
		m_pCreateStage->Update();
	}
	// フェードの更新処理
	if (m_pFade != NULL)
	{
		m_pFade->Update();
	}
    // モードの更新処理
    if (m_pMode != NULL)
    {
        m_pMode->Update();
    }
    // カメラの更新処理
    if (m_pCamera != NULL)
    {
        // ゲーム中なら
        if (typeid(*m_pMode) == typeid(CGame))
        {
            m_pCamera->Update();
        }
    }
}

//========================================
// 生成の管理の描画処理
//========================================
void CManager::Draw(void)
{
    // 描画処理
    if (m_pRenderer != NULL)
    {
        m_pRenderer->Draw();
    }
}

//========================================
// モードの取得
//========================================
CManager::MODE CManager::GetMode(void)
{
    // 返り値に使うモード
    MODE mode = MODE_NONE;

    // 何のモードが入っているか見て、型名ごとに場合分け
    if (typeid(*m_pMode) == typeid(CTitle))
    {
        mode = MODE_TITLE;
    }
    else if (typeid(*m_pMode) == typeid(CManual))
    {
        mode = MODE_MANUAL;
    }
    else if (typeid(*m_pMode) == typeid(CGame))
    {
        mode = MODE_GAME;
    }
    else if (typeid(*m_pMode) == typeid(CResult))
    {
        mode = MODE_RESULT;
    }

    return mode;
}

//========================================
// モードの設定
// mode	:	設定するモード
//========================================
void CManager::SetMode(MODE mode)
{
    // モードの中身があるなら
    if (m_pMode != NULL)
    {
        // 終了処理
        m_pMode->Uninit();

        // メモリの破棄
        delete m_pMode;
        m_pMode = NULL;
    }

    // シーン上のオブジェクトを全て終了処理
    CScene::ReleaseAll();

    // 受け取ったモードに画面遷移
    switch (mode)
    {
    case MODE_TITLE:
        m_pMode = new CTitle;
        break;

    case MODE_MANUAL:
        m_pMode = new CManual;
        break;

    case MODE_GAME:
        m_pMode = new CGame;
        break;

    case MODE_RESULT:
        m_pMode = new CResult;
        break;
    }

    // 確保したモードの初期化
    m_pMode->Init();
}