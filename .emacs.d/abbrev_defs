;;-*-coding: emacs-mule;-*-
(define-abbrev-table 'Buffer-menu-mode-abbrev-table '())

(define-abbrev-table 'awk-mode-abbrev-table
  '(
   ))

(define-abbrev-table 'c++-mode-abbrev-table
  '(
   ))

(define-abbrev-table 'c-mode-abbrev-table
  '(
   ))

(define-abbrev-table 'comint-mode-abbrev-table '())

(define-abbrev-table 'completion-list-mode-abbrev-table '())

(define-abbrev-table 'cperl-mode-abbrev-table
  '(
    ("=head1" "=head1" cperl-electric-pod 0)
    ("=head2" "=head2" cperl-electric-pod 0)
    ("=over" "=over" cperl-electric-pod 0)
    ("=pod" "=pod" cperl-electric-pod 0)
    ("continue" "continue" cperl-electric-else 0)
    ("do" "do" cperl-electric-keyword 0)
    ("else" "else" cperl-electric-else 0)
    ("elsif" "elsif" cperl-electric-keyword 0)
    ("for" "for" cperl-electric-keyword 0)
    ("foreach" "foreach" cperl-electric-keyword 0)
    ("foreachmy" "foreachmy" cperl-electric-keyword 0)
    ("formy" "formy" cperl-electric-keyword 0)
    ("head1" "head1" cperl-electric-pod 0)
    ("head2" "head2" cperl-electric-pod 0)
    ("if" "if" cperl-electric-keyword 0)
    ("over" "over" cperl-electric-pod 0)
    ("pod" "pod" cperl-electric-pod 0)
    ("unless" "unless" cperl-electric-keyword 0)
    ("until" "until" cperl-electric-keyword 0)
    ("while" "while" cperl-electric-keyword 0)
   ))

(define-abbrev-table 'emacs-lisp-mode-abbrev-table '())

(define-abbrev-table 'eshell-mode-abbrev-table '())

(define-abbrev-table 'fundamental-mode-abbrev-table
  '(
    ("win" "
#include <windows.h>



HRESULT CALLBACK WindowProc(HWND hWnd, UINT umsg,WPARAM wParam, LPARAM lParam) 
{
  switch(umsg) {
  case WM_DESTROY:
    PostQuitMessage(0);
    break;
  case WM_PAINT:
    break;
  default:
    break;
  }
  
  return DefWindowProc(hWnd, umsg, wParam, lParam);
}

int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance,
		   LPSTR lpCmdShow,int iCmdLine)
{
  MSG msg;
  HWND hWnd = NULL;
  
  WNDCLASS wnd = {CS_HREDRAW|CS_VREDRAW, WindowProc, 0, 0,hInstance, 
		  LoadIcon(NULL, IDI_APPLICATION),LoadCursor(NULL, IDC_ARROW), 
		  (HBRUSH)GetStockObject(WHITE_BRUSH), NULL, TEXT(\"App\")};
  
  if (!RegisterClass(&wnd)) {
    MessageBox(NULL, \"’¥¦’¥¤’¥ó’¥É’¥¦’¤ò’½é’´ü’²½’¤Ç’¤­’¤Þ’¤»’¤ó’¤Ç’¤·’¤¿\",NULL ,MB_OK);
	  
    return 0;
  }

  hWnd = CreateWindow(TEXT(\"App\"),TEXT(\"’¿÷’·Á’¤Ç’¤¹\"),WS_OVERLAPPEDWINDOW,
		      100, 100, 200, 200, NULL, NULL,
		      hInstance, NULL);
	
	
  ShowWindow(hWnd, SW_SHOWDEFAULT);
  UpdateWindow(hWnd);
	
  while (GetMessage(&msg, NULL, 0, 0) > 0) {
    TranslateMessage(&msg)	;
    DispatchMessage(&msg);
  }
	
	
  return 0;
}
" nil 0)
   ))

(define-abbrev-table 'global-abbrev-table '())

(define-abbrev-table 'grep-mode-abbrev-table '())

(define-abbrev-table 'idl-mode-abbrev-table '())

(define-abbrev-table 'internal-ange-ftp-mode-abbrev-table '())

(define-abbrev-table 'java-mode-abbrev-table
  '(
   ))

(define-abbrev-table 'lisp-mode-abbrev-table '())

(define-abbrev-table 'objc-mode-abbrev-table
  '(
   ))

(define-abbrev-table 'perl-mode-abbrev-table '())

(define-abbrev-table 'pike-mode-abbrev-table
  '(
   ))

(define-abbrev-table 'snippet-mode-abbrev-table '())

(define-abbrev-table 'special-mode-abbrev-table '())

(define-abbrev-table 'text-mode-abbrev-table '())

(define-abbrev-table 'twittering-edit-mode-abbrev-table '())

