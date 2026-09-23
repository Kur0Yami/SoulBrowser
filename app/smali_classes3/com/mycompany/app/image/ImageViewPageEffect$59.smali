.class Lcom/mycompany/app/image/ImageViewPageEffect$59;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebTransOcrCtrl$OcrCtrlListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/image/ImageViewPageEffect;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$59;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$59;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->X0()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$59;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->e0:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->P0()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 15
    .line 16
    sget v1, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->N0()V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Lcom/mycompany/app/image/ImageViewPageEffect;->q0(Z)V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    :goto_0
    return-void

    .line 34
    :cond_2
    iget v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/mycompany/app/compress/Compress;->n(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/4 v2, 0x0

    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-static {v0, v1, v2, v3}, Lcom/mycompany/app/image/ImageViewPageEffect;->U(Lcom/mycompany/app/image/ImageViewPageEffect;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final c(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$59;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->e0:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->P0()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object p1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 15
    .line 16
    sget v0, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 17
    .line 18
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    if-eqz p1, :cond_2

    .line 23
    .line 24
    sget-boolean v1, Lcom/mycompany/app/pref/PrefAlbum;->F:Z

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-static {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->W(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->N0()V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Lcom/mycompany/app/image/ImageViewPageEffect;->q0(Z)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0, p1}, Lcom/mycompany/app/image/ImageViewPageEffect;->b0(Lcom/mycompany/app/image/ImageViewPageEffect;Z)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$59;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->X(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$59;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/mycompany/app/image/ImageViewPageEffect;->Z(Lcom/mycompany/app/image/ImageViewPageEffect;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$59;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/mycompany/app/image/ImageViewPageEffect;->a0(Lcom/mycompany/app/image/ImageViewPageEffect;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final g()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$59;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->V0:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->x0()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->N0:Z

    .line 18
    .line 19
    sput-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 27
    .line 28
    sget v3, Lnet/kaki87/soul2/testing/R$string;->ocr_guide_1:I

    .line 29
    .line 30
    const-string v4, "\n\n"

    .line 31
    .line 32
    invoke-static {v2, v3, v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 36
    .line 37
    sget v3, Lnet/kaki87/soul2/testing/R$string;->ocr_guide_2:I

    .line 38
    .line 39
    const-string v4, "\n"

    .line 40
    .line 41
    invoke-static {v2, v3, v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 45
    .line 46
    sget v3, Lnet/kaki87/soul2/testing/R$string;->ocr_guide_3:I

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    new-instance v2, Lcom/mycompany/app/dialog/DialogConfirm;

    .line 56
    .line 57
    iget-object v3, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    new-instance v4, Lcom/mycompany/app/image/ImageViewPageEffect$67;

    .line 64
    .line 65
    invoke-direct {v4, v0}, Lcom/mycompany/app/image/ImageViewPageEffect$67;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 66
    .line 67
    .line 68
    const/4 v5, 0x0

    .line 69
    invoke-direct {v2, v3, v1, v5, v4}, Lcom/mycompany/app/dialog/DialogConfirm;-><init>(Landroid/app/Activity;Ljava/lang/String;ZLcom/mycompany/app/dialog/DialogConfirm$DialogConfListener;)V

    .line 70
    .line 71
    .line 72
    iput-object v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->V0:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 73
    .line 74
    new-instance v1, Lcom/mycompany/app/image/ImageViewPageEffect$68;

    .line 75
    .line 76
    invoke-direct {v1, v0}, Lcom/mycompany/app/image/ImageViewPageEffect$68;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$59;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->a1:Lcom/mycompany/app/dialog/DialogSetImgTrans;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->G0()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->N0:Z

    .line 18
    .line 19
    sput-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 20
    .line 21
    new-instance v1, Lcom/mycompany/app/dialog/DialogSetImgTrans;

    .line 22
    .line 23
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 24
    .line 25
    new-instance v3, Lcom/mycompany/app/image/ImageViewPageEffect$77;

    .line 26
    .line 27
    invoke-direct {v3, v0}, Lcom/mycompany/app/image/ImageViewPageEffect$77;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2, v3}, Lcom/mycompany/app/dialog/DialogSetImgTrans;-><init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->a1:Lcom/mycompany/app/dialog/DialogSetImgTrans;

    .line 34
    .line 35
    new-instance v2, Lcom/mycompany/app/image/ImageViewPageEffect$78;

    .line 36
    .line 37
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewPageEffect$78;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final i()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$59;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->U0:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->H0()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->N0:Z

    .line 18
    .line 19
    sput-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 20
    .line 21
    new-instance v1, Lcom/mycompany/app/dialog/DialogTransLang;

    .line 22
    .line 23
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 24
    .line 25
    new-instance v3, Lcom/mycompany/app/image/ImageViewPageEffect$65;

    .line 26
    .line 27
    invoke-direct {v3, v0}, Lcom/mycompany/app/image/ImageViewPageEffect$65;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 28
    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-direct {v1, v2, v4, v3}, Lcom/mycompany/app/dialog/DialogTransLang;-><init>(Lcom/mycompany/app/main/MainActivity;ZLcom/mycompany/app/dialog/DialogTransLang$TransLangListener;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->U0:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 35
    .line 36
    new-instance v2, Lcom/mycompany/app/image/ImageViewPageEffect$66;

    .line 37
    .line 38
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewPageEffect$66;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
