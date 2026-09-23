.class public Lcom/mycompany/app/video/VideoSeekControl;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;,
        Lcom/mycompany/app/video/VideoSeekControl$EventHandler;
    }
.end annotation


# static fields
.field public static final synthetic q:I


# instance fields
.field public c:Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;

.field public f:Z

.field public g:Landroid/widget/RelativeLayout;

.field public h:Lcom/mycompany/app/view/MyButtonImage;

.field public i:Lcom/mycompany/app/view/MyButtonImage;

.field public j:Lcom/mycompany/app/view/MyButtonImage;

.field public k:Landroid/widget/SeekBar;

.field public l:Landroidx/appcompat/widget/AppCompatTextView;

.field public m:Landroidx/appcompat/widget/AppCompatTextView;

.field public n:Z

.field public o:Lcom/mycompany/app/video/VideoSeekControl$EventHandler;

.field public final p:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/mycompany/app/video/VideoSeekControl$8;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/mycompany/app/video/VideoSeekControl$8;-><init>(Lcom/mycompany/app/video/VideoSeekControl;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/mycompany/app/video/VideoSeekControl;->p:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 10
    .line 11
    return-void
.end method

.method public static a(Lcom/mycompany/app/video/VideoSeekControl;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSeekControl;->c:Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0}, Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;->f()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/video/VideoSeekControl;->c:Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;

    .line 14
    .line 15
    invoke-interface {v1}, Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;->e()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-int/lit16 v1, v1, 0x2710

    .line 20
    .line 21
    if-le v1, v0, :cond_2

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    move v0, v1

    .line 25
    :goto_1
    iget-object v1, p0, Lcom/mycompany/app/video/VideoSeekControl;->c:Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-interface {v1, v0, v2}, Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;->b(IZ)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-virtual {p0, v0}, Lcom/mycompany/app/video/VideoSeekControl;->j(Z)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static b(Lcom/mycompany/app/video/VideoSeekControl;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSeekControl;->c:Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0}, Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;->f()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSeekControl;->c:Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;->e()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    add-int/lit16 v0, v0, -0x2710

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-gez v0, :cond_2

    .line 23
    .line 24
    move v0, v1

    .line 25
    :cond_2
    iget-object v2, p0, Lcom/mycompany/app/video/VideoSeekControl;->c:Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;

    .line 26
    .line 27
    invoke-interface {v2, v0, v1}, Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;->b(IZ)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-virtual {p0, v0}, Lcom/mycompany/app/video/VideoSeekControl;->j(Z)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static bridge synthetic c(Lcom/mycompany/app/video/VideoSeekControl;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mycompany/app/video/VideoSeekControl;->setIconsClickable(Z)V

    return-void
.end method

.method public static d(Lcom/mycompany/app/video/VideoSeekControl;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSeekControl;->k:Landroid/widget/SeekBar;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoSeekControl;->n:Z

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSeekControl;->c:Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;->f()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/mycompany/app/video/VideoSeekControl;->k:Landroid/widget/SeekBar;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/video/VideoSeekControl;->f(II)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-direct {p0, v0}, Lcom/mycompany/app/video/VideoSeekControl;->setIconsClickable(Z)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoSeekControl;->n:Z

    .line 32
    .line 33
    return-void
.end method

.method private setIconsClickable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSeekControl;->g:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSeekControl;->h:Lcom/mycompany/app/view/MyButtonImage;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSeekControl;->i:Lcom/mycompany/app/view/MyButtonImage;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSeekControl;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private setIconsPressed(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSeekControl;->g:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSeekControl;->h:Lcom/mycompany/app/view/MyButtonImage;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSeekControl;->i:Lcom/mycompany/app/view/MyButtonImage;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSeekControl;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSeekControl;->k:Landroid/widget/SeekBar;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSeekControl;->c:Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;->a()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-direct {p0, p1}, Lcom/mycompany/app/video/VideoSeekControl;->setIconsPressed(Z)V

    .line 13
    .line 14
    .line 15
    return p1

    .line 16
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public final e(J)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSeekControl;->c:Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-interface {v0}, Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;->f()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    int-to-long v0, v0

    .line 12
    invoke-static {v0, v1, p1, p2}, Lcom/mycompany/app/main/MainUtil;->q2(JJ)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final f(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSeekControl;->k:Landroid/widget/SeekBar;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v1, "00:00"

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoSeekControl;->h()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSeekControl;->k:Landroid/widget/SeekBar;

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSeekControl;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSeekControl;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    const/16 v2, 0x3e8

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    if-ge p1, v2, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSeekControl;->c:Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;

    .line 39
    .line 40
    invoke-interface {p1, p2, v3}, Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;->b(IZ)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSeekControl;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 44
    .line 45
    const-string p2, "00:01"

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSeekControl;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 57
    .line 58
    .line 59
    int-to-float v0, p1

    .line 60
    int-to-float p2, p2

    .line 61
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 62
    .line 63
    div-float/2addr p2, v1

    .line 64
    mul-float/2addr p2, v0

    .line 65
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSeekControl;->c:Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;

    .line 70
    .line 71
    invoke-interface {v0, p2, v3}, Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;->b(IZ)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSeekControl;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 75
    .line 76
    int-to-long v1, p1

    .line 77
    invoke-virtual {p0, v1, v2}, Lcom/mycompany/app/video/VideoSeekControl;->e(J)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSeekControl;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 85
    .line 86
    int-to-long v0, p2

    .line 87
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/video/VideoSeekControl;->e(J)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSeekControl;->o:Lcom/mycompany/app/video/VideoSeekControl$EventHandler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lcom/mycompany/app/video/VideoSeekControl;->o:Lcom/mycompany/app/video/VideoSeekControl$EventHandler;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSeekControl;->h:Lcom/mycompany/app/view/MyButtonImage;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/mycompany/app/video/VideoSeekControl;->h:Lcom/mycompany/app/view/MyButtonImage;

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSeekControl;->i:Lcom/mycompany/app/view/MyButtonImage;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/mycompany/app/video/VideoSeekControl;->i:Lcom/mycompany/app/view/MyButtonImage;

    .line 29
    .line 30
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSeekControl;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/video/VideoSeekControl;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 38
    .line 39
    :cond_3
    iput-object v1, p0, Lcom/mycompany/app/video/VideoSeekControl;->c:Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;

    .line 40
    .line 41
    iput-object v1, p0, Lcom/mycompany/app/video/VideoSeekControl;->g:Landroid/widget/RelativeLayout;

    .line 42
    .line 43
    iput-object v1, p0, Lcom/mycompany/app/video/VideoSeekControl;->k:Landroid/widget/SeekBar;

    .line 44
    .line 45
    iput-object v1, p0, Lcom/mycompany/app/video/VideoSeekControl;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 46
    .line 47
    iput-object v1, p0, Lcom/mycompany/app/video/VideoSeekControl;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 48
    .line 49
    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSeekControl;->c:Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/video/VideoSeekControl;->i:Lcom/mycompany/app/view/MyButtonImage;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    invoke-interface {v0}, Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;->g()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSeekControl;->i:Lcom/mycompany/app/view/MyButtonImage;

    .line 18
    .line 19
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_pause_white_24:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSeekControl;->i:Lcom/mycompany/app/view/MyButtonImage;

    .line 26
    .line 27
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_white_24:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final i(Landroid/content/Context;Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iput-object v1, v0, Lcom/mycompany/app/video/VideoSeekControl;->c:Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;

    .line 6
    .line 7
    invoke-static/range {p1 .. p1}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iput-boolean v1, v0, Lcom/mycompany/app/video/VideoSeekControl;->f:Z

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    sget v2, Lnet/kaki87/soul2/testing/R$id;->seek_icon_play:I

    .line 21
    .line 22
    sget v3, Lnet/kaki87/soul2/testing/R$id;->seek_curr_time:I

    .line 23
    .line 24
    sget v4, Lnet/kaki87/soul2/testing/R$id;->seek_total_time:I

    .line 25
    .line 26
    new-instance v5, Lcom/mycompany/app/view/MyButtonImage;

    .line 27
    .line 28
    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5, v2}, Landroid/view/View;->setId(I)V

    .line 32
    .line 33
    .line 34
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 35
    .line 36
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 37
    .line 38
    .line 39
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->baseline_pause_white_24:I

    .line 40
    .line 41
    invoke-virtual {v5, v7}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 42
    .line 43
    .line 44
    sget v7, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 45
    .line 46
    int-to-float v7, v7

    .line 47
    sget v8, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 48
    .line 49
    int-to-float v8, v8

    .line 50
    invoke-virtual {v5, v7, v8}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 51
    .line 52
    .line 53
    const/high16 v7, -0x5f000000

    .line 54
    .line 55
    const v8, -0x5e8a8a8b

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v7, v8}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 59
    .line 60
    .line 61
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 62
    .line 63
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 64
    .line 65
    invoke-direct {v9, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 66
    .line 67
    .line 68
    const/16 v10, 0xe

    .line 69
    .line 70
    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    .line 75
    .line 76
    const/high16 v9, 0x42000000    # 32.0f

    .line 77
    .line 78
    invoke-static {v1, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    float-to-int v9, v9

    .line 83
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->baseline_fast_rewind_white_24:I

    .line 88
    .line 89
    invoke-virtual {v10, v11}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 90
    .line 91
    .line 92
    sget v11, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 93
    .line 94
    int-to-float v11, v11

    .line 95
    sget v12, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 96
    .line 97
    int-to-float v12, v12

    .line 98
    invoke-virtual {v10, v11, v12}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v10, v7, v8}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 102
    .line 103
    .line 104
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 105
    .line 106
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 107
    .line 108
    invoke-direct {v11, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 109
    .line 110
    .line 111
    const/16 v12, 0x10

    .line 112
    .line 113
    invoke-virtual {v11, v12, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v11, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    .line 121
    .line 122
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->baseline_fast_forward_white_24:I

    .line 127
    .line 128
    invoke-virtual {v6, v11}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 129
    .line 130
    .line 131
    sget v11, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 132
    .line 133
    int-to-float v11, v11

    .line 134
    sget v13, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 135
    .line 136
    int-to-float v13, v13

    .line 137
    invoke-virtual {v6, v11, v13}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6, v7, v8}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 141
    .line 142
    .line 143
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 144
    .line 145
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 146
    .line 147
    invoke-direct {v8, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 148
    .line 149
    .line 150
    const/16 v11, 0x11

    .line 151
    .line 152
    invoke-virtual {v8, v11, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    .line 160
    .line 161
    new-instance v2, Landroid/widget/RelativeLayout;

    .line 162
    .line 163
    invoke-direct {v2, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 164
    .line 165
    .line 166
    sget v8, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 167
    .line 168
    const/4 v9, 0x0

    .line 169
    invoke-virtual {v2, v8, v9, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v9}, Landroid/view/View;->setLayoutDirection(I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 176
    .line 177
    .line 178
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 179
    .line 180
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 181
    .line 182
    const/4 v9, -0x1

    .line 183
    invoke-direct {v7, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 184
    .line 185
    .line 186
    sget v8, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 187
    .line 188
    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 189
    .line 190
    invoke-virtual {v0, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    .line 192
    .line 193
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextView;

    .line 194
    .line 195
    const/4 v8, 0x0

    .line 196
    invoke-direct {v7, v1, v8}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v7, v3}, Landroid/view/View;->setId(I)V

    .line 200
    .line 201
    .line 202
    const/4 v13, 0x1

    .line 203
    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 204
    .line 205
    .line 206
    const/high16 v14, 0x41600000    # 14.0f

    .line 207
    .line 208
    invoke-virtual {v7, v13, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    .line 213
    .line 214
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 215
    .line 216
    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 217
    .line 218
    .line 219
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 220
    .line 221
    const/4 v12, -0x2

    .line 222
    invoke-direct {v15, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 223
    .line 224
    .line 225
    const/16 v11, 0xf

    .line 226
    .line 227
    invoke-virtual {v15, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2, v7, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    .line 232
    .line 233
    new-instance v15, Landroidx/appcompat/widget/AppCompatTextView;

    .line 234
    .line 235
    invoke-direct {v15, v1, v8}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v15, v4}, Landroid/view/View;->setId(I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v15, v13, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 248
    .line 249
    .line 250
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 251
    .line 252
    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 253
    .line 254
    .line 255
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 256
    .line 257
    invoke-direct {v8, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 261
    .line 262
    .line 263
    const/16 v13, 0x15

    .line 264
    .line 265
    invoke-virtual {v8, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2, v15, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    .line 270
    .line 271
    new-instance v8, Landroid/widget/SeekBar;

    .line 272
    .line 273
    invoke-direct {v8, v1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 274
    .line 275
    .line 276
    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_w:I

    .line 277
    .line 278
    invoke-static {v1, v13}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 279
    .line 280
    .line 281
    move-result-object v13

    .line 282
    invoke-virtual {v8, v13}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 283
    .line 284
    .line 285
    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_w:I

    .line 286
    .line 287
    invoke-static {v1, v13}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    invoke-virtual {v8, v1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 292
    .line 293
    .line 294
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 295
    .line 296
    invoke-direct {v1, v9, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 297
    .line 298
    .line 299
    const/16 v9, 0x11

    .line 300
    .line 301
    invoke-virtual {v1, v9, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 302
    .line 303
    .line 304
    const/16 v3, 0x10

    .line 305
    .line 306
    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v2, v8, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    .line 314
    .line 315
    iput-object v2, v0, Lcom/mycompany/app/video/VideoSeekControl;->g:Landroid/widget/RelativeLayout;

    .line 316
    .line 317
    iput-object v10, v0, Lcom/mycompany/app/video/VideoSeekControl;->h:Lcom/mycompany/app/view/MyButtonImage;

    .line 318
    .line 319
    iput-object v5, v0, Lcom/mycompany/app/video/VideoSeekControl;->i:Lcom/mycompany/app/view/MyButtonImage;

    .line 320
    .line 321
    iput-object v6, v0, Lcom/mycompany/app/video/VideoSeekControl;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 322
    .line 323
    iput-object v8, v0, Lcom/mycompany/app/video/VideoSeekControl;->k:Landroid/widget/SeekBar;

    .line 324
    .line 325
    iput-object v15, v0, Lcom/mycompany/app/video/VideoSeekControl;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 326
    .line 327
    iput-object v7, v0, Lcom/mycompany/app/video/VideoSeekControl;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 328
    .line 329
    new-instance v1, Lcom/mycompany/app/video/VideoSeekControl$1;

    .line 330
    .line 331
    invoke-direct {v1, v0}, Lcom/mycompany/app/video/VideoSeekControl$1;-><init>(Lcom/mycompany/app/video/VideoSeekControl;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 335
    .line 336
    .line 337
    return-void
.end method

.method public final j(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSeekControl;->c:Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSeekControl;->o:Lcom/mycompany/app/video/VideoSeekControl$EventHandler;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_1
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 15
    .line 16
    .line 17
    const-wide/16 v2, 0x3e8

    .line 18
    .line 19
    if-nez p1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoSeekControl;->h()V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSeekControl;->o:Lcom/mycompany/app/video/VideoSeekControl$EventHandler;

    .line 25
    .line 26
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_9

    .line 35
    .line 36
    iget-boolean p1, p0, Lcom/mycompany/app/video/VideoSeekControl;->n:Z

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    goto/16 :goto_2

    .line 41
    .line 42
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_4

    .line 47
    .line 48
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSeekControl;->o:Lcom/mycompany/app/video/VideoSeekControl$EventHandler;

    .line 49
    .line 50
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_4
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoSeekControl;->h()V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSeekControl;->c:Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;

    .line 58
    .line 59
    invoke-interface {p1}, Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;->f()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSeekControl;->c:Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;

    .line 64
    .line 65
    invoke-interface {v0}, Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;->e()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iget-object v2, p0, Lcom/mycompany/app/video/VideoSeekControl;->o:Lcom/mycompany/app/video/VideoSeekControl$EventHandler;

    .line 70
    .line 71
    rem-int/lit16 v3, v0, 0x3e8

    .line 72
    .line 73
    const/16 v4, 0x3e8

    .line 74
    .line 75
    rsub-int v3, v3, 0x3e8

    .line 76
    .line 77
    int-to-long v5, v3

    .line 78
    invoke-virtual {v2, v1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 79
    .line 80
    .line 81
    const-string v2, "00:00"

    .line 82
    .line 83
    if-nez p1, :cond_5

    .line 84
    .line 85
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSeekControl;->k:Landroid/widget/SeekBar;

    .line 86
    .line 87
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSeekControl;->k:Landroid/widget/SeekBar;

    .line 91
    .line 92
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSeekControl;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 96
    .line 97
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSeekControl;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 101
    .line 102
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_5
    if-ge p1, v4, :cond_7

    .line 107
    .line 108
    iget-object v1, p0, Lcom/mycompany/app/video/VideoSeekControl;->k:Landroid/widget/SeekBar;

    .line 109
    .line 110
    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 111
    .line 112
    .line 113
    if-le v0, p1, :cond_6

    .line 114
    .line 115
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSeekControl;->k:Landroid/widget/SeekBar;

    .line 116
    .line 117
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_6
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSeekControl;->k:Landroid/widget/SeekBar;

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 124
    .line 125
    .line 126
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSeekControl;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 127
    .line 128
    const-string v0, "00:01"

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSeekControl;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 134
    .line 135
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_7
    iget-object v1, p0, Lcom/mycompany/app/video/VideoSeekControl;->k:Landroid/widget/SeekBar;

    .line 140
    .line 141
    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 142
    .line 143
    .line 144
    if-le v0, p1, :cond_8

    .line 145
    .line 146
    iget-object v1, p0, Lcom/mycompany/app/video/VideoSeekControl;->k:Landroid/widget/SeekBar;

    .line 147
    .line 148
    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_8
    iget-object v1, p0, Lcom/mycompany/app/video/VideoSeekControl;->k:Landroid/widget/SeekBar;

    .line 153
    .line 154
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 155
    .line 156
    int-to-float v3, v0

    .line 157
    mul-float/2addr v3, v2

    .line 158
    int-to-float v2, p1

    .line 159
    div-float/2addr v3, v2

    .line 160
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 165
    .line 166
    .line 167
    :goto_1
    iget-object v1, p0, Lcom/mycompany/app/video/VideoSeekControl;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 168
    .line 169
    int-to-long v2, p1

    .line 170
    invoke-virtual {p0, v2, v3}, Lcom/mycompany/app/video/VideoSeekControl;->e(J)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    .line 176
    .line 177
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSeekControl;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 178
    .line 179
    int-to-long v0, v0

    .line 180
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/video/VideoSeekControl;->e(J)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    .line 186
    .line 187
    :cond_9
    :goto_2
    return-void
.end method

.method public final k()V
    .locals 1

    .line 1
    new-instance v0, Lcom/mycompany/app/video/VideoSeekControl$7;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/mycompany/app/video/VideoSeekControl$7;-><init>(Lcom/mycompany/app/video/VideoSeekControl;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method
