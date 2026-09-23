.class Lcom/mycompany/app/main/MainTxtView$21;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainTxtView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTxtView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/main/MainTxtView$21;->c:Lcom/mycompany/app/main/MainTxtView;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView$21;->c:Lcom/mycompany/app/main/MainTxtView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->L1:Lcom/mycompany/app/main/MainTxtAdapter;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->Q1:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    :goto_0
    move p1, v2

    .line 21
    goto :goto_1

    .line 22
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->Q1:Landroid/widget/LinearLayout;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    float-to-int v3, v3

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    float-to-int p1, p1

    .line 34
    invoke-static {v3, p1, v2, v1}, Lcom/mycompany/app/main/MainUtil;->J5(IIILandroid/view/View;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    :goto_1
    if-eqz p1, :cond_3

    .line 39
    .line 40
    :goto_2
    return v2

    .line 41
    :cond_3
    iget-object p1, v0, Lcom/mycompany/app/main/MainTxtView;->L1:Lcom/mycompany/app/main/MainTxtAdapter;

    .line 42
    .line 43
    iget v0, p1, Lcom/mycompany/app/main/MainTxtAdapter;->i:I

    .line 44
    .line 45
    const/16 v1, 0x5a

    .line 46
    .line 47
    if-le v0, v1, :cond_4

    .line 48
    .line 49
    const/16 v1, 0x6e

    .line 50
    .line 51
    if-ge v0, v1, :cond_4

    .line 52
    .line 53
    const/16 v0, 0xc8

    .line 54
    .line 55
    iput v0, p1, Lcom/mycompany/app/main/MainTxtAdapter;->i:I

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_4
    const/16 v0, 0x64

    .line 59
    .line 60
    iput v0, p1, Lcom/mycompany/app/main/MainTxtAdapter;->i:I

    .line 61
    .line 62
    :goto_3
    iget v0, p1, Lcom/mycompany/app/main/MainTxtAdapter;->i:I

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lcom/mycompany/app/main/MainTxtAdapter;->x(I)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    sput p1, Lcom/mycompany/app/pref/PrefRead;->m:I

    .line 69
    .line 70
    const/4 p1, 0x1

    .line 71
    return p1
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView$21;->c:Lcom/mycompany/app/main/MainTxtView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->I1:Lcom/mycompany/app/view/MyRoundItem;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainTxtView;->M0()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_8

    .line 14
    .line 15
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->D2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->I1:Lcom/mycompany/app/view/MyRoundItem;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    float-to-int v3, v3

    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    float-to-int v4, v4

    .line 32
    invoke-static {v3, v4, v2, v1}, Lcom/mycompany/app/main/MainUtil;->J5(IIILandroid/view/View;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->N1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 40
    .line 41
    if-nez v1, :cond_3

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->Q1:Landroid/widget/LinearLayout;

    .line 45
    .line 46
    if-nez v1, :cond_4

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_5

    .line 54
    .line 55
    :goto_0
    move p1, v2

    .line 56
    goto :goto_1

    .line 57
    :cond_5
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->Q1:Landroid/widget/LinearLayout;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    float-to-int v3, v3

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    float-to-int p1, p1

    .line 69
    invoke-static {v3, p1, v2, v1}, Lcom/mycompany/app/main/MainUtil;->J5(IIILandroid/view/View;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    :goto_1
    if-eqz p1, :cond_6

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_6
    iget-object p1, v0, Lcom/mycompany/app/main/MainTxtView;->N1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyFadeFrame;->e()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    xor-int/lit8 v1, p1, 0x1

    .line 83
    .line 84
    if-nez p1, :cond_7

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainTxtView;->R0()V

    .line 87
    .line 88
    .line 89
    :cond_7
    iget-object p1, v0, Lcom/mycompany/app/main/MainTxtView;->N1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 90
    .line 91
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyFadeFrame;->i(Z)V

    .line 92
    .line 93
    .line 94
    const/4 p1, 0x1

    .line 95
    return p1

    .line 96
    :cond_8
    :goto_2
    return v2
.end method
