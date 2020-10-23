//====================================================================
//
// 入力処理 (input.h)
// Author : 後藤慎之助
//
//====================================================================
#ifndef _INPUT_H_
#define _INPUT_H_

//================================================
// インクルードファイル
//================================================
#include "main.h"

//================================================
// マクロ定義
//================================================
#define NUM_KEY_MAX (256)//キーの最大数

#define MAX_CONTROLLER 1       //つなぐコントローラーの最大数

#define BUTTON_UP     (0)	    // 十字キー上
#define BUTTON_DOWN   (18000)	// 十字キー下
#define BUTTON_LEFT   (27000)	// 十字キー左
#define BUTTON_RIGHT  (9000)	// 十字キー右

#define BUTTON_UP_RIGHT     (4500)	// 十字キー上右
#define BUTTON_RIGHT_DOWN  (13500)	// 十字キー右下
#define BUTTON_DOWN_LEFT   (22500)	// 十字キー下左
#define BUTTON_LEFT_UP   (31500)	// 十字キー左上

#define BUTTON_NEUTRAL -1       // 何も入力していないとき
#define CROSSZONE (4500)        // 十字キーの許容範囲

// プレイヤーの番号
#define PLAYER_1 (0)     // プレイヤーのコントローラー番号 (1P)
#define PLAYER_2 (1)     // プレイヤーのコントローラー番号 (2P)
#define PLAYER_3 (2)     // プレイヤーのコントローラー番号 (3P)
#define PLAYER_4 (3)     // プレイヤーのコントローラー番号 (4P)

//================================================
// クラス宣言
//================================================

// 入力のクラス
class CInput
{
public:
    CInput();
    virtual ~CInput();  // 親クラスのデストラクタにvirtualをつけることで、メモリリークを抑える
    virtual HRESULT Init(HINSTANCE hInstance, HWND hWnd);
    virtual void Uninit(void);
    virtual void Update(void) = 0;

protected:
    LPDIRECTINPUTDEVICE8 m_pDevice;	// 入力デバイスへのポインタ
    static LPDIRECTINPUT8 m_pInput;	// DirectInputへのポインタ
};

// キーボード入力のクラス
class CInputKeyboard : public CInput
{
public:
    CInputKeyboard();
    ~CInputKeyboard();
    HRESULT Init(HINSTANCE hInstance, HWND hWnd);
    void Uninit(void);
    void Update(void);
    bool GetKeyboardPress(int nKey);
    bool GetKeyboardTrigger(int nKey);
    bool GetKeyboardRelease(int nKey);

private:
    BYTE m_aKeyStateOld[NUM_KEY_MAX];       // 1F前のキーボードの入力情報ワーク
    BYTE m_aKeyStateTrigger[NUM_KEY_MAX];	// キーボードのトリガー情報
    BYTE m_aKeyStateRelease[NUM_KEY_MAX];	// キーボードのリリース情報
};

// ジョイパッドのクラス
class CInputJoypad :public CInput
{
public:

    // ボタンの種類
    typedef enum
    {
        BUTTON_X = 0,
        BUTTON_Y,
        BUTTON_A,
        BUTTON_B,
        BUTTON_L1,
        BUTTON_R1,
        BUTTON_L2,
        BUTTON_R2,
        BUTTON_L3,
        BUTTON_R3,
        BUTTON_SELECT,
        BUTTON_START,
        BUTTON_GUIDE,
        MAX_BUTTON
    }BUTTON;

    // コントローラの情報
    typedef struct
    {
        LPDIRECTINPUTDEVICE8 pDIJoypad = NULL; // コントローラーデバイス
        DIJOYSTATE2 State;       // コントローラーのプレス情報
        DIJOYSTATE2 Trigger;     // コントローラーのトリガー情報
        DIJOYSTATE2 Release;     // コントローラーのプレス情報
    }CONTROLLER;

    CInputJoypad();
    ~CInputJoypad();
    HRESULT Init(HINSTANCE hInstance, HWND hWnd);
    void Update(void);
    void Release(void);
    bool GetJoypadPress(int nController, int nButton);
    bool GetJoypadTrigger(int nController, int nButton);
    bool GetJoypadRelease(int nController, int nButton);
    DIJOYSTATE2 GetController(int nContllre);
    static LPDIRECTINPUT8 GetInput(void) { return m_pInput; }
    HRESULT CreateDevice(LPDIDEVICEINSTANCE lpddi);

private:
    CONTROLLER m_Controller[MAX_CONTROLLER];    // コントローラーの情報
    static int m_nCntController;                // コントローラーの接続数
};

class CMouse : public CInput {
public:
	typedef struct _MSTATE {
		RECT    moveRect;     // 画面上で動ける範囲
		int     x;            // X座標
		int     y;            // Y座標
		bool    lButton;      // 左ボタン
		bool    rButton;      // 右ボタン
		bool    cButton;      // 真ん中ボタン
		int     moveAdd;      // 移動量
		RECT    imgRect;      // マウス用画像矩形
		int     imgWidth;     // マウス画像幅
		int     imgHeight;    // マウス画像高さ
	} MSTATE;

	HRESULT Init(HINSTANCE hInstance, HWND hWnd);
	void Uninit(void);
	void Update(void);

	static MSTATE *GetMouse(void);
	bool GetMouseTriggerLeft(void);
	bool GetMouseTriggerRight(void);

private:
	DIMOUSESTATE2 m_dIMouseState;
	static CMouse::MSTATE m_MState;
};

#endif