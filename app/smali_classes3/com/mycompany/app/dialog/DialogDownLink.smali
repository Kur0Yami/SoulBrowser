.class public Lcom/mycompany/app/dialog/DialogDownLink;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# static fields
.field public static final synthetic r0:I


# instance fields
.field public a0:Lcom/mycompany/app/main/MainActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/dialog/DialogPreview$PreviewListener;

.field public d0:Ljava/lang/String;

.field public e0:Ljava/lang/String;

.field public f0:J

.field public g0:Lcom/mycompany/app/view/MyDialogLinear;

.field public h0:Landroidx/appcompat/widget/AppCompatTextView;

.field public i0:Lcom/mycompany/app/view/MyButtonImage;

.field public j0:Lcom/mycompany/app/view/MyButtonImage;

.field public k0:Lcom/mycompany/app/view/MyButtonImage;

.field public l0:Lcom/mycompany/app/view/MyButtonImage;

.field public m0:Lcom/mycompany/app/view/MyLineText;

.field public n0:Lcom/mycompany/app/view/MyLineText;

.field public o0:Lcom/mycompany/app/dialog/DialogDownSize;

.field public p0:Ljava/lang/String;

.field public q0:Landroid/text/SpannableString;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;JLcom/mycompany/app/dialog/DialogPreview$PreviewListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownLink;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownLink;->b0:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/mycompany/app/dialog/DialogDownLink;->c0:Lcom/mycompany/app/dialog/DialogPreview$PreviewListener;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogDownLink;->d0:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogDownLink;->e0:Ljava/lang/String;

    .line 17
    .line 18
    iput-wide p4, p0, Lcom/mycompany/app/dialog/DialogDownLink;->f0:J

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogDownLink$1;

    .line 26
    .line 27
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogDownLink$1;-><init>(Lcom/mycompany/app/dialog/DialogDownLink;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final B()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownLink;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-wide v1, p0, Lcom/mycompany/app/dialog/DialogDownLink;->f0:J

    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    cmp-long v3, v1, v3

    .line 11
    .line 12
    const/16 v4, 0x8

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    if-lez v3, :cond_1

    .line 16
    .line 17
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->h1(J)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownLink;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 25
    .line 26
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownLink;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 30
    .line 31
    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownLink;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 39
    .line 40
    invoke-virtual {v0, v5}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownLink;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownLink;->o0:Lcom/mycompany/app/dialog/DialogDownSize;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDownSize;->dismiss()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownLink;->o0:Lcom/mycompany/app/dialog/DialogDownSize;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownLink;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownLink;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 27
    .line 28
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownLink;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownLink;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 36
    .line 37
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownLink;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownLink;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 45
    .line 46
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownLink;->k0:Lcom/mycompany/app/view/MyButtonImage;

    .line 47
    .line 48
    if-eqz v0, :cond_5

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownLink;->k0:Lcom/mycompany/app/view/MyButtonImage;

    .line 54
    .line 55
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownLink;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 56
    .line 57
    if-eqz v0, :cond_6

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownLink;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 63
    .line 64
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownLink;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 65
    .line 66
    if-eqz v0, :cond_7

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 69
    .line 70
    .line 71
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownLink;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 72
    .line 73
    :cond_7
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownLink;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 74
    .line 75
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownLink;->b0:Landroid/content/Context;

    .line 76
    .line 77
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownLink;->c0:Lcom/mycompany/app/dialog/DialogPreview$PreviewListener;

    .line 78
    .line 79
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownLink;->d0:Ljava/lang/String;

    .line 80
    .line 81
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownLink;->e0:Ljava/lang/String;

    .line 82
    .line 83
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownLink;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 84
    .line 85
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownLink;->m0:Lcom/mycompany/app/view/MyLineText;

    .line 86
    .line 87
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 88
    .line 89
    .line 90
    return-void
.end method
