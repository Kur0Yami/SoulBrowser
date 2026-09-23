.class Lcom/mycompany/app/setting/SettingInfoLegalView$5;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingInfoLegalView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingInfoLegalView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingInfoLegalView$5;->c:Lcom/mycompany/app/setting/SettingInfoLegalView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingInfoLegalView$5;->c:Lcom/mycompany/app/setting/SettingInfoLegalView;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingInfoLegalView;->a2:Lcom/mycompany/app/main/MainTxtAdapter;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    iget v1, p1, Lcom/mycompany/app/main/MainTxtAdapter;->i:I

    .line 10
    .line 11
    const/16 v2, 0x5a

    .line 12
    .line 13
    if-le v1, v2, :cond_1

    .line 14
    .line 15
    const/16 v2, 0x6e

    .line 16
    .line 17
    if-ge v1, v2, :cond_1

    .line 18
    .line 19
    const/16 v1, 0xc8

    .line 20
    .line 21
    iput v1, p1, Lcom/mycompany/app/main/MainTxtAdapter;->i:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/16 v1, 0x64

    .line 25
    .line 26
    iput v1, p1, Lcom/mycompany/app/main/MainTxtAdapter;->i:I

    .line 27
    .line 28
    :goto_0
    iget v1, p1, Lcom/mycompany/app/main/MainTxtAdapter;->i:I

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Lcom/mycompany/app/main/MainTxtAdapter;->x(I)I

    .line 31
    .line 32
    .line 33
    return v0
.end method
