.class public Lcom/mycompany/app/dialog/DialogSeekSub;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# static fields
.field public static final synthetic p0:I


# instance fields
.field public a0:Lcom/mycompany/app/video/VideoActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

.field public d0:Lcom/mycompany/app/view/MyDialogLinear;

.field public e0:Landroidx/appcompat/widget/AppCompatTextView;

.field public f0:Landroidx/appcompat/widget/AppCompatTextView;

.field public g0:Landroid/widget/SeekBar;

.field public h0:Lcom/mycompany/app/view/MyButtonImage;

.field public i0:Lcom/mycompany/app/view/MyButtonImage;

.field public j0:Landroidx/appcompat/widget/AppCompatTextView;

.field public k0:Lcom/mycompany/app/view/MyLineText;

.field public l0:Lcom/mycompany/app/dialog/DialogSetMsg;

.field public final m0:I

.field public n0:I

.field public o0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity;IILcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekSub;->a0:Lcom/mycompany/app/video/VideoActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekSub;->b0:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogSeekSub;->c0:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

    .line 13
    .line 14
    iput p2, p0, Lcom/mycompany/app/dialog/DialogSeekSub;->m0:I

    .line 15
    .line 16
    div-int/lit16 p3, p3, 0x3e8

    .line 17
    .line 18
    add-int/lit8 p3, p3, 0x64

    .line 19
    .line 20
    if-gez p3, :cond_0

    .line 21
    .line 22
    const/4 p3, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 p2, 0xc8

    .line 25
    .line 26
    if-le p3, p2, :cond_1

    .line 27
    .line 28
    move p3, p2

    .line 29
    :cond_1
    :goto_0
    iput p3, p0, Lcom/mycompany/app/dialog/DialogSeekSub;->n0:I

    .line 30
    .line 31
    sget p2, Lnet/kaki87/soul2/testing/R$string;->time_s:I

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekSub;->o0:Ljava/lang/String;

    .line 38
    .line 39
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 40
    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    new-instance p2, Lcom/mycompany/app/dialog/DialogSeekSub$1;

    .line 45
    .line 46
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogSeekSub$1;-><init>(Lcom/mycompany/app/dialog/DialogSeekSub;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogSeekSub;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekSub;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    if-gez p1, :cond_1

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_1
    const/16 v0, 0xc8

    .line 11
    .line 12
    if-le p1, v0, :cond_2

    .line 13
    .line 14
    move p1, v0

    .line 15
    :cond_2
    :goto_0
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSeekSub;->n0:I

    .line 16
    .line 17
    if-ne v0, p1, :cond_3

    .line 18
    .line 19
    :goto_1
    return-void

    .line 20
    :cond_3
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSeekSub;->n0:I

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSeekSub;->D()V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final C()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekSub;->l0:Lcom/mycompany/app/dialog/DialogSetMsg;

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekSub;->l0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final D()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekSub;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSeekSub;->n0:I

    .line 7
    .line 8
    add-int/lit8 v0, v0, -0x64

    .line 9
    .line 10
    if-lez v0, :cond_1

    .line 11
    .line 12
    const-string v1, "+"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    if-gez v0, :cond_2

    .line 16
    .line 17
    const-string v1, "-"

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    const-string v1, ""

    .line 21
    .line 22
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekSub;->o0:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekSub;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekSub;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSeekSub;->C()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekSub;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekSub;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekSub;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekSub;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 30
    .line 31
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekSub;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekSub;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 39
    .line 40
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekSub;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekSub;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 48
    .line 49
    :cond_4
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekSub;->a0:Lcom/mycompany/app/video/VideoActivity;

    .line 50
    .line 51
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekSub;->b0:Landroid/content/Context;

    .line 52
    .line 53
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekSub;->c0:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

    .line 54
    .line 55
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekSub;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 56
    .line 57
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekSub;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 58
    .line 59
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekSub;->g0:Landroid/widget/SeekBar;

    .line 60
    .line 61
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekSub;->o0:Ljava/lang/String;

    .line 62
    .line 63
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekSub;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 64
    .line 65
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 66
    .line 67
    .line 68
    return-void
.end method
