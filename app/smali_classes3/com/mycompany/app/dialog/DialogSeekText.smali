.class public Lcom/mycompany/app/dialog/DialogSeekText;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# static fields
.field public static final synthetic t0:I


# instance fields
.field public final a0:I

.field public final b0:I

.field public c0:Landroid/app/Activity;

.field public d0:Landroid/content/Context;

.field public e0:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

.field public f0:Lcom/mycompany/app/view/MyDialogLinear;

.field public g0:Landroidx/appcompat/widget/AppCompatTextView;

.field public h0:Landroidx/appcompat/widget/AppCompatTextView;

.field public i0:Landroid/widget/SeekBar;

.field public j0:Lcom/mycompany/app/view/MyButtonImage;

.field public k0:Lcom/mycompany/app/view/MyButtonImage;

.field public l0:Landroidx/appcompat/widget/AppCompatTextView;

.field public m0:Lcom/mycompany/app/view/MyLineText;

.field public n0:Lcom/mycompany/app/dialog/DialogSetMsg;

.field public o0:I

.field public p0:I

.field public q0:Z

.field public r0:Z

.field public final s0:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/dialog/DialogSeekText$9;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogSeekText$9;-><init>(Lcom/mycompany/app/dialog/DialogSeekText;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekText;->s0:Ljava/lang/Runnable;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekText;->c0:Landroid/app/Activity;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekText;->d0:Landroid/content/Context;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogSeekText;->e0:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

    .line 20
    .line 21
    sget p1, Lcom/mycompany/app/pref/PrefRead;->m:I

    .line 22
    .line 23
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSeekText;->p0:I

    .line 24
    .line 25
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSeekText;->o0:I

    .line 26
    .line 27
    const/16 p2, 0x32

    .line 28
    .line 29
    iput p2, p0, Lcom/mycompany/app/dialog/DialogSeekText;->a0:I

    .line 30
    .line 31
    const/16 v0, 0x1f4

    .line 32
    .line 33
    iput v0, p0, Lcom/mycompany/app/dialog/DialogSeekText;->b0:I

    .line 34
    .line 35
    if-ge p1, p2, :cond_0

    .line 36
    .line 37
    iput p2, p0, Lcom/mycompany/app/dialog/DialogSeekText;->p0:I

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    if-le p1, v0, :cond_1

    .line 41
    .line 42
    iput v0, p0, Lcom/mycompany/app/dialog/DialogSeekText;->p0:I

    .line 43
    .line 44
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 45
    .line 46
    if-nez p1, :cond_2

    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    new-instance p2, Lcom/mycompany/app/dialog/DialogSeekText$1;

    .line 50
    .line 51
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogSeekText$1;-><init>(Lcom/mycompany/app/dialog/DialogSeekText;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogSeekText;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekText;->s0:Ljava/lang/Runnable;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekText;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSeekText;->a0:I

    .line 9
    .line 10
    if-ge p1, v2, :cond_1

    .line 11
    .line 12
    :goto_0
    move p1, v2

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSeekText;->b0:I

    .line 15
    .line 16
    if-le p1, v2, :cond_2

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/mycompany/app/dialog/DialogSeekText;->r0:Z

    .line 20
    .line 21
    if-nez v2, :cond_6

    .line 22
    .line 23
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSeekText;->p0:I

    .line 24
    .line 25
    if-ne v2, p1, :cond_3

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_3
    const/4 v2, 0x1

    .line 29
    iput-boolean v2, p0, Lcom/mycompany/app/dialog/DialogSeekText;->r0:Z

    .line 30
    .line 31
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSeekText;->p0:I

    .line 32
    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSeekText;->p0:I

    .line 39
    .line 40
    const-string v3, "%"

    .line 41
    .line 42
    invoke-static {p1, v2, v3, v1}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekText;->e0:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

    .line 46
    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSeekText;->p0:I

    .line 50
    .line 51
    invoke-interface {p1, v1}, Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;->a(I)V

    .line 52
    .line 53
    .line 54
    :cond_4
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSeekText;->q0:Z

    .line 55
    .line 56
    if-eqz p1, :cond_5

    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSeekText;->q0:Z

    .line 60
    .line 61
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSeekText;->r0:Z

    .line 62
    .line 63
    return-void

    .line 64
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekText;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogSeekText;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 70
    .line 71
    const-wide/16 v1, 0x64

    .line 72
    .line 73
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    .line 75
    .line 76
    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public final C()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekText;->n0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetMsg;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekText;->n0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final D(Z)V
    .locals 4

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefRead;->m:I

    .line 2
    .line 3
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSeekText;->p0:I

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    sput v1, Lcom/mycompany/app/pref/PrefRead;->m:I

    .line 8
    .line 9
    const-string v0, "mTextSize"

    .line 10
    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogSeekText;->d0:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v3, v2, v1, v0}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekText;->d0:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {v1, v2, v0}, Lcom/mycompany/app/pref/PrefSet;->i(Landroid/content/Context;ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSeekText;->p0:I

    .line 27
    .line 28
    iput v0, p0, Lcom/mycompany/app/dialog/DialogSeekText;->o0:I

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSeekText;->dismiss()V

    .line 33
    .line 34
    .line 35
    :cond_2
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekText;->d0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSeekText;->p0:I

    .line 10
    .line 11
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSeekText;->o0:I

    .line 12
    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    iput v1, p0, Lcom/mycompany/app/dialog/DialogSeekText;->p0:I

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekText;->e0:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0, v1}, Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;->a(I)V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSeekText;->C()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekText;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekText;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 36
    .line 37
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekText;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekText;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 45
    .line 46
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekText;->k0:Lcom/mycompany/app/view/MyButtonImage;

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekText;->k0:Lcom/mycompany/app/view/MyButtonImage;

    .line 54
    .line 55
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekText;->m0:Lcom/mycompany/app/view/MyLineText;

    .line 56
    .line 57
    if-eqz v0, :cond_5

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekText;->m0:Lcom/mycompany/app/view/MyLineText;

    .line 63
    .line 64
    :cond_5
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekText;->c0:Landroid/app/Activity;

    .line 65
    .line 66
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekText;->d0:Landroid/content/Context;

    .line 67
    .line 68
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekText;->e0:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

    .line 69
    .line 70
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekText;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 71
    .line 72
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekText;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 73
    .line 74
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekText;->i0:Landroid/widget/SeekBar;

    .line 75
    .line 76
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekText;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 77
    .line 78
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 79
    .line 80
    .line 81
    return-void
.end method
