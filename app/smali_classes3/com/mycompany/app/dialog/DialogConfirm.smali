.class public Lcom/mycompany/app/dialog/DialogConfirm;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogConfirm$DialogConfListener;,
        Lcom/mycompany/app/dialog/DialogConfirm$DialogConfBtnListener;
    }
.end annotation


# instance fields
.field public A0:Landroidx/appcompat/widget/AppCompatTextView;

.field public B0:Landroidx/appcompat/widget/AppCompatTextView;

.field public C0:Landroidx/appcompat/widget/AppCompatTextView;

.field public D0:Lcom/mycompany/app/view/MyButtonText;

.field public E0:Lcom/mycompany/app/view/MyLineFrame;

.field public F0:Lcom/mycompany/app/view/MyButtonCheck;

.field public G0:Landroidx/appcompat/widget/AppCompatTextView;

.field public H0:Lcom/mycompany/app/view/MyLineText;

.field public I0:Lcom/mycompany/app/view/MyLineText;

.field public a0:Landroid/content/Context;

.field public b0:Lcom/mycompany/app/dialog/DialogConfirm$DialogConfListener;

.field public c0:Lcom/mycompany/app/dialog/DialogConfirm$DialogConfBtnListener;

.field public final d0:Z

.field public final e0:I

.field public f0:Ljava/lang/String;

.field public g0:Ljava/lang/String;

.field public final h0:I

.field public final i0:I

.field public j0:Ljava/lang/String;

.field public final k0:I

.field public final l0:I

.field public final m0:I

.field public final n0:I

.field public final o0:I

.field public final p0:Z

.field public final q0:I

.field public final r0:I

.field public s0:Lcom/mycompany/app/view/MyDialogLinear;

.field public t0:Landroid/widget/ImageView;

.field public u0:Landroidx/appcompat/widget/AppCompatTextView;

.field public v0:Landroidx/appcompat/widget/AppCompatTextView;

.field public w0:Landroidx/appcompat/widget/AppCompatTextView;

.field public x0:Landroidx/appcompat/widget/AppCompatTextView;

.field public y0:Landroidx/appcompat/widget/AppCompatTextView;

.field public z0:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;IILcom/mycompany/app/dialog/DialogConfirm$DialogConfListener;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->a0:Landroid/content/Context;

    .line 21
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogConfirm;->b0:Lcom/mycompany/app/dialog/DialogConfirm$DialogConfListener;

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->d0:Z

    .line 23
    iput p2, p0, Lcom/mycompany/app/dialog/DialogConfirm;->h0:I

    .line 24
    iput p3, p0, Lcom/mycompany/app/dialog/DialogConfirm;->i0:I

    .line 25
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->p0:Z

    .line 26
    sget p1, Lnet/kaki87/soul2/testing/R$string;->ok:I

    iput p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->q0:I

    .line 27
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    if-nez p1, :cond_0

    return-void

    .line 28
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogConfirm$3;

    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogConfirm$3;-><init>(Lcom/mycompany/app/dialog/DialogConfirm;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILcom/mycompany/app/dialog/DialogConfirm$DialogConfListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->a0:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogConfirm;->b0:Lcom/mycompany/app/dialog/DialogConfirm$DialogConfListener;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->d0:Z

    .line 5
    iput p2, p0, Lcom/mycompany/app/dialog/DialogConfirm;->e0:I

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->p0:Z

    .line 7
    sget p1, Lnet/kaki87/soul2/testing/R$string;->ok:I

    iput p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->q0:I

    .line 8
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    if-nez p1, :cond_0

    return-void

    .line 9
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogConfirm$1;

    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogConfirm$1;-><init>(Lcom/mycompany/app/dialog/DialogConfirm;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogConfirm$DialogConfBtnListener;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->a0:Landroid/content/Context;

    .line 67
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogConfirm;->c0:Lcom/mycompany/app/dialog/DialogConfirm$DialogConfBtnListener;

    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->d0:Z

    .line 69
    sget p1, Lnet/kaki87/soul2/testing/R$string;->ok:I

    iput p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->q0:I

    .line 70
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 71
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogConfirm;->f0:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogConfirm;->g0:Ljava/lang/String;

    goto :goto_0

    .line 73
    :cond_0
    sget p1, Lnet/kaki87/soul2/testing/R$string;->storage:I

    iput p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->h0:I

    .line 74
    sget p1, Lnet/kaki87/soul2/testing/R$string;->storage_guide_1:I

    iput p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->i0:I

    .line 75
    sget p1, Lnet/kaki87/soul2/testing/R$string;->storage_guide_2:I

    iput p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->k0:I

    .line 76
    sget p1, Lnet/kaki87/soul2/testing/R$string;->storage_guide_3:I

    iput p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->l0:I

    .line 77
    sget p1, Lnet/kaki87/soul2/testing/R$string;->storage_guide_4:I

    iput p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->m0:I

    .line 78
    sget p1, Lnet/kaki87/soul2/testing/R$string;->setting:I

    iput p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->r0:I

    .line 79
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    if-nez p1, :cond_1

    return-void

    .line 80
    :cond_1
    new-instance p2, Lcom/mycompany/app/dialog/DialogConfirm$6;

    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogConfirm$6;-><init>(Lcom/mycompany/app/dialog/DialogConfirm;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogConfirm$DialogConfListener;)V
    .locals 1

    .line 81
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->a0:Landroid/content/Context;

    .line 83
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogConfirm;->b0:Lcom/mycompany/app/dialog/DialogConfirm$DialogConfListener;

    const/4 p1, 0x0

    .line 84
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->d0:Z

    .line 85
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogConfirm;->f0:Ljava/lang/String;

    .line 86
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->p0:Z

    .line 87
    sget p1, Lnet/kaki87/soul2/testing/R$string;->ok:I

    iput p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->q0:I

    .line 88
    sget p1, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    iput p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->r0:I

    .line 89
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    if-nez p1, :cond_0

    return-void

    .line 89
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogConfirm$2;

    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogConfirm$2;-><init>(Lcom/mycompany/app/dialog/DialogConfirm;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;ZLcom/mycompany/app/dialog/DialogConfirm$DialogConfListener;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->a0:Landroid/content/Context;

    .line 12
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogConfirm;->b0:Lcom/mycompany/app/dialog/DialogConfirm$DialogConfListener;

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->d0:Z

    .line 14
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogConfirm;->f0:Ljava/lang/String;

    .line 15
    iput-boolean p3, p0, Lcom/mycompany/app/dialog/DialogConfirm;->p0:Z

    .line 16
    sget p1, Lnet/kaki87/soul2/testing/R$string;->ok:I

    iput p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->q0:I

    .line 17
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    if-nez p1, :cond_0

    return-void

    .line 18
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogConfirm$2;

    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogConfirm$2;-><init>(Lcom/mycompany/app/dialog/DialogConfirm;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZLcom/mycompany/app/dialog/DialogConfirm$DialogConfBtnListener;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->a0:Landroid/content/Context;

    .line 57
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogConfirm;->c0:Lcom/mycompany/app/dialog/DialogConfirm$DialogConfBtnListener;

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->d0:Z

    .line 59
    sget p1, Lnet/kaki87/soul2/testing/R$string;->dark_guide_1:I

    iput p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->e0:I

    .line 60
    sget p1, Lnet/kaki87/soul2/testing/R$string;->check_ver:I

    iput p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->o0:I

    .line 61
    iput-boolean p2, p0, Lcom/mycompany/app/dialog/DialogConfirm;->p0:Z

    .line 62
    sget p1, Lnet/kaki87/soul2/testing/R$string;->ok:I

    iput p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->q0:I

    .line 63
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    if-nez p1, :cond_0

    return-void

    .line 64
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogConfirm$5;

    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogConfirm$5;-><init>(Lcom/mycompany/app/dialog/DialogConfirm;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/dialog/DialogConfirm$DialogConfListener;)V
    .locals 2

    .line 29
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->a0:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogConfirm;->b0:Lcom/mycompany/app/dialog/DialogConfirm$DialogConfListener;

    .line 32
    sget p1, Lnet/kaki87/soul2/testing/R$string;->right_title:I

    iput p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->h0:I

    .line 33
    sget p1, Lnet/kaki87/soul2/testing/R$string;->important_copyright:I

    iput p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->n0:I

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->p0:Z

    .line 35
    sget p1, Lnet/kaki87/soul2/testing/R$string;->ok:I

    iput p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->q0:I

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogConfirm;->a0:Landroid/content/Context;

    sget v0, Lnet/kaki87/soul2/testing/R$string;->guide_right_1:I

    .line 38
    const-string v1, " "

    invoke-static {p2, v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 39
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogConfirm;->a0:Landroid/content/Context;

    sget v0, Lnet/kaki87/soul2/testing/R$string;->guide_right_2:I

    .line 40
    invoke-static {p2, v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 41
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogConfirm;->a0:Landroid/content/Context;

    sget v0, Lnet/kaki87/soul2/testing/R$string;->guide_right_3:I

    .line 42
    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->v(ILandroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->j0:Ljava/lang/String;

    .line 44
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    if-nez p1, :cond_0

    return-void

    .line 45
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogConfirm$4;

    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogConfirm$4;-><init>(Lcom/mycompany/app/dialog/DialogConfirm;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogConfirm;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogConfirm;->o0:I

    .line 4
    .line 5
    iget v2, v0, Lcom/mycompany/app/dialog/DialogConfirm;->n0:I

    .line 6
    .line 7
    iget v3, v0, Lcom/mycompany/app/dialog/DialogConfirm;->m0:I

    .line 8
    .line 9
    iget v4, v0, Lcom/mycompany/app/dialog/DialogConfirm;->l0:I

    .line 10
    .line 11
    iget v5, v0, Lcom/mycompany/app/dialog/DialogConfirm;->k0:I

    .line 12
    .line 13
    iget v6, v0, Lcom/mycompany/app/dialog/DialogConfirm;->i0:I

    .line 14
    .line 15
    iget v7, v0, Lcom/mycompany/app/dialog/DialogConfirm;->h0:I

    .line 16
    .line 17
    iget v8, v0, Lcom/mycompany/app/dialog/DialogConfirm;->e0:I

    .line 18
    .line 19
    iget v9, v0, Lcom/mycompany/app/dialog/DialogConfirm;->r0:I

    .line 20
    .line 21
    iget v10, v0, Lcom/mycompany/app/dialog/DialogConfirm;->q0:I

    .line 22
    .line 23
    iget-object v11, v0, Lcom/mycompany/app/dialog/DialogConfirm;->a0:Landroid/content/Context;

    .line 24
    .line 25
    if-nez v11, :cond_0

    .line 26
    .line 27
    goto/16 :goto_15

    .line 28
    .line 29
    :cond_0
    const/4 v12, 0x1

    .line 30
    invoke-static {v11, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 31
    .line 32
    .line 33
    move-result-object v13

    .line 34
    iget-boolean v14, v0, Lcom/mycompany/app/dialog/DialogConfirm;->d0:Z

    .line 35
    .line 36
    if-eqz v14, :cond_1

    .line 37
    .line 38
    new-instance v14, Lcom/mycompany/app/view/MyLineFrame;

    .line 39
    .line 40
    invoke-direct {v14, v11}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 44
    .line 45
    invoke-virtual {v14, v15}, Lcom/mycompany/app/view/MyLineFrame;->setLinePad(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v14, v12}, Lcom/mycompany/app/view/MyLineFrame;->setLineDn(Z)V

    .line 49
    .line 50
    .line 51
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 52
    .line 53
    const/4 v12, -0x1

    .line 54
    invoke-virtual {v13, v14, v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 55
    .line 56
    .line 57
    new-instance v12, Landroid/widget/ImageView;

    .line 58
    .line 59
    invoke-direct {v12, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 63
    .line 64
    invoke-virtual {v12, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 65
    .line 66
    .line 67
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 68
    .line 69
    move/from16 v18, v10

    .line 70
    .line 71
    sget v10, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 72
    .line 73
    invoke-direct {v15, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 74
    .line 75
    .line 76
    const v10, 0x800013

    .line 77
    .line 78
    .line 79
    iput v10, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 80
    .line 81
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 82
    .line 83
    invoke-virtual {v15, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v14, v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    .line 88
    .line 89
    move-object/from16 v19, v12

    .line 90
    .line 91
    const/4 v10, 0x2

    .line 92
    const/4 v15, 0x0

    .line 93
    invoke-static {v11, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->i(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/appcompat/widget/AppCompatTextView;

    .line 94
    .line 95
    .line 96
    move-result-object v12

    .line 97
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 98
    .line 99
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 100
    .line 101
    .line 102
    const/high16 v10, 0x41800000    # 16.0f

    .line 103
    .line 104
    const/4 v15, 0x1

    .line 105
    invoke-virtual {v12, v15, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 106
    .line 107
    .line 108
    sget v10, Lnet/kaki87/soul2/testing/R$string;->tip:I

    .line 109
    .line 110
    move/from16 v20, v9

    .line 111
    .line 112
    const/4 v9, -0x1

    .line 113
    const/4 v15, -0x2

    .line 114
    invoke-static {v12, v10, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->d(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/FrameLayout$LayoutParams;

    .line 115
    .line 116
    .line 117
    move-result-object v10

    .line 118
    const v9, 0x800013

    .line 119
    .line 120
    .line 121
    iput v9, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 122
    .line 123
    const/high16 v9, 0x42800000    # 64.0f

    .line 124
    .line 125
    invoke-static {v11, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    float-to-int v9, v9

    .line 130
    invoke-virtual {v10, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 131
    .line 132
    .line 133
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 134
    .line 135
    invoke-virtual {v10, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v14, v12, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    .line 140
    .line 141
    move-object v15, v12

    .line 142
    move-object/from16 v12, v19

    .line 143
    .line 144
    :goto_0
    const/4 v9, 0x0

    .line 145
    const/4 v10, 0x2

    .line 146
    goto :goto_1

    .line 147
    :cond_1
    move/from16 v20, v9

    .line 148
    .line 149
    move/from16 v18, v10

    .line 150
    .line 151
    const/4 v12, 0x0

    .line 152
    const/4 v15, 0x0

    .line 153
    goto :goto_0

    .line 154
    :goto_1
    invoke-static {v11, v9, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->m(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/core/widget/NestedScrollView;

    .line 155
    .line 156
    .line 157
    move-result-object v14

    .line 158
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 159
    .line 160
    const/4 v10, 0x0

    .line 161
    move-object/from16 v19, v15

    .line 162
    .line 163
    const/4 v15, -0x1

    .line 164
    invoke-direct {v9, v15, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 165
    .line 166
    .line 167
    const/high16 v15, 0x3f800000    # 1.0f

    .line 168
    .line 169
    iput v15, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 170
    .line 171
    invoke-virtual {v13, v14, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    .line 173
    .line 174
    new-instance v9, Landroid/widget/LinearLayout;

    .line 175
    .line 176
    invoke-direct {v9, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 177
    .line 178
    .line 179
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 180
    .line 181
    invoke-virtual {v9, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 182
    .line 183
    .line 184
    const/high16 v10, 0x42900000    # 72.0f

    .line 185
    .line 186
    invoke-static {v11, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 187
    .line 188
    .line 189
    move-result v10

    .line 190
    float-to-int v10, v10

    .line 191
    invoke-virtual {v9, v10}, Landroid/view/View;->setMinimumHeight(I)V

    .line 192
    .line 193
    .line 194
    const/4 v10, 0x1

    .line 195
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 196
    .line 197
    .line 198
    const/4 v10, -0x2

    .line 199
    const/4 v15, -0x1

    .line 200
    invoke-virtual {v14, v9, v15, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 201
    .line 202
    .line 203
    const/high16 v10, 0x41600000    # 14.0f

    .line 204
    .line 205
    if-nez v8, :cond_3

    .line 206
    .line 207
    iget-object v14, v0, Lcom/mycompany/app/dialog/DialogConfirm;->f0:Ljava/lang/String;

    .line 208
    .line 209
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 210
    .line 211
    .line 212
    move-result v14

    .line 213
    if-nez v14, :cond_2

    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_2
    move-object/from16 v21, v12

    .line 217
    .line 218
    const/4 v15, 0x0

    .line 219
    goto :goto_5

    .line 220
    :cond_3
    :goto_2
    new-instance v14, Landroidx/appcompat/widget/AppCompatTextView;

    .line 221
    .line 222
    const/4 v15, 0x0

    .line 223
    invoke-direct {v14, v11, v15}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 224
    .line 225
    .line 226
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 227
    .line 228
    int-to-float v15, v15

    .line 229
    move-object/from16 v21, v12

    .line 230
    .line 231
    const/high16 v12, 0x3f800000    # 1.0f

    .line 232
    .line 233
    invoke-virtual {v14, v15, v12}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 234
    .line 235
    .line 236
    const/4 v15, 0x1

    .line 237
    invoke-virtual {v14, v15, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 238
    .line 239
    .line 240
    if-eqz v8, :cond_4

    .line 241
    .line 242
    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setText(I)V

    .line 243
    .line 244
    .line 245
    :goto_3
    const/4 v12, -0x1

    .line 246
    const/4 v15, -0x2

    .line 247
    goto :goto_4

    .line 248
    :cond_4
    iget-object v8, v0, Lcom/mycompany/app/dialog/DialogConfirm;->f0:Ljava/lang/String;

    .line 249
    .line 250
    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    .line 252
    .line 253
    goto :goto_3

    .line 254
    :goto_4
    invoke-virtual {v9, v14, v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 255
    .line 256
    .line 257
    move-object v15, v14

    .line 258
    :goto_5
    iget-object v8, v0, Lcom/mycompany/app/dialog/DialogConfirm;->g0:Ljava/lang/String;

    .line 259
    .line 260
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 261
    .line 262
    .line 263
    move-result v8

    .line 264
    if-nez v8, :cond_5

    .line 265
    .line 266
    new-instance v8, Landroidx/appcompat/widget/AppCompatTextView;

    .line 267
    .line 268
    const/4 v12, 0x0

    .line 269
    invoke-direct {v8, v11, v12}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 270
    .line 271
    .line 272
    sget v12, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 273
    .line 274
    int-to-float v12, v12

    .line 275
    const/high16 v14, 0x3f800000    # 1.0f

    .line 276
    .line 277
    invoke-virtual {v8, v12, v14}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 278
    .line 279
    .line 280
    const/4 v12, 0x1

    .line 281
    invoke-virtual {v8, v12, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 282
    .line 283
    .line 284
    iget-object v12, v0, Lcom/mycompany/app/dialog/DialogConfirm;->g0:Ljava/lang/String;

    .line 285
    .line 286
    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    .line 288
    .line 289
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 290
    .line 291
    const/4 v10, -0x1

    .line 292
    const/4 v14, -0x2

    .line 293
    invoke-direct {v12, v10, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 294
    .line 295
    .line 296
    sget v10, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 297
    .line 298
    mul-int/lit8 v10, v10, 0x6

    .line 299
    .line 300
    iput v10, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 301
    .line 302
    invoke-virtual {v9, v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    .line 304
    .line 305
    goto :goto_6

    .line 306
    :cond_5
    const/4 v8, 0x0

    .line 307
    :goto_6
    if-eqz v7, :cond_6

    .line 308
    .line 309
    new-instance v10, Landroidx/appcompat/widget/AppCompatTextView;

    .line 310
    .line 311
    const/4 v12, 0x0

    .line 312
    invoke-direct {v10, v11, v12}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 313
    .line 314
    .line 315
    const/high16 v12, 0x41800000    # 16.0f

    .line 316
    .line 317
    const/4 v14, 0x1

    .line 318
    invoke-virtual {v10, v14, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(I)V

    .line 322
    .line 323
    .line 324
    const/4 v12, -0x1

    .line 325
    const/4 v14, -0x2

    .line 326
    invoke-virtual {v9, v10, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 327
    .line 328
    .line 329
    goto :goto_7

    .line 330
    :cond_6
    const/4 v10, 0x0

    .line 331
    :goto_7
    if-nez v6, :cond_8

    .line 332
    .line 333
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogConfirm;->j0:Ljava/lang/String;

    .line 334
    .line 335
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 336
    .line 337
    .line 338
    move-result v7

    .line 339
    if-nez v7, :cond_7

    .line 340
    .line 341
    goto :goto_8

    .line 342
    :cond_7
    const/4 v7, 0x0

    .line 343
    goto :goto_a

    .line 344
    :cond_8
    :goto_8
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextView;

    .line 345
    .line 346
    const/4 v12, 0x0

    .line 347
    invoke-direct {v7, v11, v12}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 348
    .line 349
    .line 350
    sget v12, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 351
    .line 352
    int-to-float v12, v12

    .line 353
    const/high16 v14, 0x3f800000    # 1.0f

    .line 354
    .line 355
    invoke-virtual {v7, v12, v14}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 356
    .line 357
    .line 358
    const/high16 v12, 0x41600000    # 14.0f

    .line 359
    .line 360
    const/4 v14, 0x1

    .line 361
    invoke-virtual {v7, v14, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 362
    .line 363
    .line 364
    if-eqz v6, :cond_9

    .line 365
    .line 366
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(I)V

    .line 367
    .line 368
    .line 369
    goto :goto_9

    .line 370
    :cond_9
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogConfirm;->j0:Ljava/lang/String;

    .line 371
    .line 372
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    .line 374
    .line 375
    :goto_9
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 376
    .line 377
    const/4 v12, -0x1

    .line 378
    const/4 v14, -0x2

    .line 379
    invoke-direct {v6, v12, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 380
    .line 381
    .line 382
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 383
    .line 384
    iput v12, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 385
    .line 386
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 387
    .line 388
    invoke-virtual {v6, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v9, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    .line 393
    .line 394
    :goto_a
    if-eqz v5, :cond_a

    .line 395
    .line 396
    new-instance v6, Landroidx/appcompat/widget/AppCompatTextView;

    .line 397
    .line 398
    const/4 v12, 0x0

    .line 399
    invoke-direct {v6, v11, v12}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 400
    .line 401
    .line 402
    sget v12, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 403
    .line 404
    int-to-float v12, v12

    .line 405
    const/high16 v14, 0x3f800000    # 1.0f

    .line 406
    .line 407
    invoke-virtual {v6, v12, v14}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 408
    .line 409
    .line 410
    const/high16 v12, 0x41600000    # 14.0f

    .line 411
    .line 412
    const/4 v14, 0x1

    .line 413
    invoke-virtual {v6, v14, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(I)V

    .line 417
    .line 418
    .line 419
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 420
    .line 421
    const/4 v12, -0x1

    .line 422
    const/4 v14, -0x2

    .line 423
    invoke-direct {v5, v12, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 424
    .line 425
    .line 426
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 427
    .line 428
    iput v12, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 429
    .line 430
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 431
    .line 432
    invoke-virtual {v5, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v9, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    .line 437
    .line 438
    goto :goto_b

    .line 439
    :cond_a
    const/4 v6, 0x0

    .line 440
    :goto_b
    if-eqz v4, :cond_b

    .line 441
    .line 442
    new-instance v5, Landroidx/appcompat/widget/AppCompatTextView;

    .line 443
    .line 444
    const/4 v12, 0x0

    .line 445
    invoke-direct {v5, v11, v12}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 446
    .line 447
    .line 448
    sget v12, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 449
    .line 450
    int-to-float v12, v12

    .line 451
    const/high16 v14, 0x3f800000    # 1.0f

    .line 452
    .line 453
    invoke-virtual {v5, v12, v14}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 454
    .line 455
    .line 456
    const/high16 v12, 0x41600000    # 14.0f

    .line 457
    .line 458
    const/4 v14, 0x1

    .line 459
    invoke-virtual {v5, v14, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(I)V

    .line 463
    .line 464
    .line 465
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 466
    .line 467
    const/4 v12, -0x1

    .line 468
    const/4 v14, -0x2

    .line 469
    invoke-direct {v4, v12, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 470
    .line 471
    .line 472
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 473
    .line 474
    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 475
    .line 476
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 477
    .line 478
    invoke-virtual {v4, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v9, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    .line 483
    .line 484
    goto :goto_c

    .line 485
    :cond_b
    const/4 v5, 0x0

    .line 486
    :goto_c
    if-eqz v3, :cond_c

    .line 487
    .line 488
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 489
    .line 490
    const/4 v12, 0x0

    .line 491
    invoke-direct {v4, v11, v12}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 492
    .line 493
    .line 494
    sget v12, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 495
    .line 496
    int-to-float v12, v12

    .line 497
    const/high16 v14, 0x3f800000    # 1.0f

    .line 498
    .line 499
    invoke-virtual {v4, v12, v14}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 500
    .line 501
    .line 502
    const/high16 v12, 0x41600000    # 14.0f

    .line 503
    .line 504
    const/4 v14, 0x1

    .line 505
    invoke-virtual {v4, v14, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    .line 509
    .line 510
    .line 511
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 512
    .line 513
    const/4 v12, -0x1

    .line 514
    const/4 v14, -0x2

    .line 515
    invoke-direct {v3, v12, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 516
    .line 517
    .line 518
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 519
    .line 520
    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 521
    .line 522
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 523
    .line 524
    invoke-virtual {v3, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v9, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    .line 529
    .line 530
    goto :goto_d

    .line 531
    :cond_c
    const/4 v4, 0x0

    .line 532
    :goto_d
    if-eqz v2, :cond_d

    .line 533
    .line 534
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 535
    .line 536
    const/4 v12, 0x0

    .line 537
    invoke-direct {v3, v11, v12}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 538
    .line 539
    .line 540
    const/4 v14, 0x1

    .line 541
    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 542
    .line 543
    .line 544
    sget v12, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 545
    .line 546
    int-to-float v12, v12

    .line 547
    move-object/from16 v22, v4

    .line 548
    .line 549
    const/high16 v4, 0x3f800000    # 1.0f

    .line 550
    .line 551
    invoke-virtual {v3, v12, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 552
    .line 553
    .line 554
    const/high16 v12, 0x41600000    # 14.0f

    .line 555
    .line 556
    invoke-virtual {v3, v14, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 560
    .line 561
    .line 562
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 563
    .line 564
    const/4 v12, -0x1

    .line 565
    const/4 v14, -0x2

    .line 566
    invoke-direct {v2, v12, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 567
    .line 568
    .line 569
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 570
    .line 571
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 572
    .line 573
    invoke-virtual {v9, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    .line 575
    .line 576
    goto :goto_e

    .line 577
    :cond_d
    move-object/from16 v22, v4

    .line 578
    .line 579
    const/4 v3, 0x0

    .line 580
    :goto_e
    if-eqz v1, :cond_e

    .line 581
    .line 582
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 583
    .line 584
    const/16 v16, 0x2

    .line 585
    .line 586
    div-int/lit8 v4, v4, 0x2

    .line 587
    .line 588
    new-instance v12, Lcom/mycompany/app/view/MyButtonText;

    .line 589
    .line 590
    invoke-direct {v12, v11}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 591
    .line 592
    .line 593
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 594
    .line 595
    sget v2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 596
    .line 597
    move-object/from16 v23, v3

    .line 598
    .line 599
    sget v3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 600
    .line 601
    move-object/from16 v24, v5

    .line 602
    .line 603
    sget v5, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 604
    .line 605
    invoke-virtual {v12, v14, v2, v3, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 606
    .line 607
    .line 608
    const/16 v2, 0x11

    .line 609
    .line 610
    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 611
    .line 612
    .line 613
    const/high16 v2, 0x41800000    # 16.0f

    .line 614
    .line 615
    const/4 v14, 0x1

    .line 616
    invoke-virtual {v12, v14, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(I)V

    .line 620
    .line 621
    .line 622
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 623
    .line 624
    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 625
    .line 626
    .line 627
    invoke-virtual {v12, v14}, Lcom/mycompany/app/view/MyButtonText;->setBgNorFixed(Z)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {v12, v14}, Lcom/mycompany/app/view/MyButtonText;->setRoundRect(Z)V

    .line 631
    .line 632
    .line 633
    invoke-virtual {v12, v4}, Lcom/mycompany/app/view/MyButtonText;->setRoundRadius(I)V

    .line 634
    .line 635
    .line 636
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 637
    .line 638
    const/4 v2, -0x1

    .line 639
    const/4 v14, -0x2

    .line 640
    invoke-direct {v1, v2, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 641
    .line 642
    .line 643
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 644
    .line 645
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 646
    .line 647
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 648
    .line 649
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 650
    .line 651
    .line 652
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 653
    .line 654
    .line 655
    invoke-virtual {v9, v12, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 656
    .line 657
    .line 658
    goto :goto_f

    .line 659
    :cond_e
    move-object/from16 v23, v3

    .line 660
    .line 661
    move-object/from16 v24, v5

    .line 662
    .line 663
    const/4 v12, 0x0

    .line 664
    :goto_f
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogConfirm;->p0:Z

    .line 665
    .line 666
    if-eqz v1, :cond_f

    .line 667
    .line 668
    new-instance v1, Lcom/mycompany/app/view/MyLineFrame;

    .line 669
    .line 670
    invoke-direct {v1, v11}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 671
    .line 672
    .line 673
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 674
    .line 675
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyLineFrame;->setLinePad(I)V

    .line 676
    .line 677
    .line 678
    const/4 v14, 0x1

    .line 679
    invoke-virtual {v1, v14}, Lcom/mycompany/app/view/MyLineFrame;->setLineUp(Z)V

    .line 680
    .line 681
    .line 682
    const/4 v2, -0x2

    .line 683
    const/4 v9, -0x1

    .line 684
    invoke-virtual {v13, v1, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 685
    .line 686
    .line 687
    new-instance v2, Lcom/mycompany/app/view/MyButtonCheck;

    .line 688
    .line 689
    invoke-direct {v2, v11}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 690
    .line 691
    .line 692
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 693
    .line 694
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 695
    .line 696
    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 697
    .line 698
    .line 699
    const v9, 0x800013

    .line 700
    .line 701
    .line 702
    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 703
    .line 704
    sget v4, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 705
    .line 706
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 707
    .line 708
    .line 709
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 710
    .line 711
    .line 712
    const/4 v3, 0x0

    .line 713
    const/high16 v4, 0x41600000    # 14.0f

    .line 714
    .line 715
    invoke-static {v11, v3, v14, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 716
    .line 717
    .line 718
    move-result-object v4

    .line 719
    sget v5, Lnet/kaki87/soul2/testing/R$string;->message_confirm:I

    .line 720
    .line 721
    const/4 v3, -0x1

    .line 722
    const/4 v14, -0x2

    .line 723
    invoke-static {v4, v5, v3, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->d(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/FrameLayout$LayoutParams;

    .line 724
    .line 725
    .line 726
    move-result-object v5

    .line 727
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 728
    .line 729
    sget v3, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 730
    .line 731
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 732
    .line 733
    .line 734
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 735
    .line 736
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 737
    .line 738
    .line 739
    invoke-virtual {v1, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 740
    .line 741
    .line 742
    goto :goto_10

    .line 743
    :cond_f
    const/4 v1, 0x0

    .line 744
    const/4 v2, 0x0

    .line 745
    const/4 v4, 0x0

    .line 746
    :goto_10
    if-eqz v20, :cond_12

    .line 747
    .line 748
    new-instance v3, Lcom/mycompany/app/view/MyLineLinear;

    .line 749
    .line 750
    invoke-direct {v3, v11}, Lcom/mycompany/app/view/MyLineLinear;-><init>(Landroid/content/Context;)V

    .line 751
    .line 752
    .line 753
    const/4 v5, 0x0

    .line 754
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 755
    .line 756
    .line 757
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 758
    .line 759
    .line 760
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 761
    .line 762
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyLineLinear;->setLinePad(I)V

    .line 763
    .line 764
    .line 765
    const/4 v14, 0x1

    .line 766
    invoke-virtual {v3, v14}, Lcom/mycompany/app/view/MyLineLinear;->setLineUp(Z)V

    .line 767
    .line 768
    .line 769
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 770
    .line 771
    const/4 v9, -0x1

    .line 772
    invoke-virtual {v13, v3, v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 773
    .line 774
    .line 775
    if-eqz v20, :cond_10

    .line 776
    .line 777
    new-instance v5, Lcom/mycompany/app/view/MyLineText;

    .line 778
    .line 779
    invoke-direct {v5, v11}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 780
    .line 781
    .line 782
    const/16 v9, 0x11

    .line 783
    .line 784
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 785
    .line 786
    .line 787
    const/high16 v9, 0x41800000    # 16.0f

    .line 788
    .line 789
    invoke-virtual {v5, v14, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 790
    .line 791
    .line 792
    move/from16 v9, v20

    .line 793
    .line 794
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    .line 795
    .line 796
    .line 797
    invoke-virtual {v5, v11}, Lcom/mycompany/app/view/MyLineText;->s(Landroid/content/Context;)V

    .line 798
    .line 799
    .line 800
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 801
    .line 802
    move-object/from16 v17, v4

    .line 803
    .line 804
    const/4 v4, -0x1

    .line 805
    const/4 v14, 0x0

    .line 806
    invoke-direct {v9, v14, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 807
    .line 808
    .line 809
    const/high16 v14, 0x3f800000    # 1.0f

    .line 810
    .line 811
    iput v14, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 812
    .line 813
    invoke-virtual {v3, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 814
    .line 815
    .line 816
    goto :goto_11

    .line 817
    :cond_10
    move-object/from16 v17, v4

    .line 818
    .line 819
    const/4 v5, 0x0

    .line 820
    :goto_11
    if-eqz v18, :cond_11

    .line 821
    .line 822
    new-instance v4, Lcom/mycompany/app/view/MyLineText;

    .line 823
    .line 824
    invoke-direct {v4, v11}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 825
    .line 826
    .line 827
    const/16 v9, 0x11

    .line 828
    .line 829
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 830
    .line 831
    .line 832
    const/high16 v9, 0x41800000    # 16.0f

    .line 833
    .line 834
    const/4 v14, 0x1

    .line 835
    invoke-virtual {v4, v14, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 836
    .line 837
    .line 838
    move/from16 v9, v18

    .line 839
    .line 840
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(I)V

    .line 841
    .line 842
    .line 843
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 844
    .line 845
    const/4 v11, -0x1

    .line 846
    const/4 v14, 0x0

    .line 847
    invoke-direct {v9, v14, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 848
    .line 849
    .line 850
    const/high16 v14, 0x3f800000    # 1.0f

    .line 851
    .line 852
    iput v14, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 853
    .line 854
    invoke-virtual {v3, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 855
    .line 856
    .line 857
    goto :goto_12

    .line 858
    :cond_11
    const/4 v4, 0x0

    .line 859
    :goto_12
    move-object v3, v4

    .line 860
    goto :goto_14

    .line 861
    :cond_12
    move-object/from16 v17, v4

    .line 862
    .line 863
    move/from16 v9, v18

    .line 864
    .line 865
    if-eqz v9, :cond_13

    .line 866
    .line 867
    new-instance v3, Lcom/mycompany/app/view/MyLineText;

    .line 868
    .line 869
    invoke-direct {v3, v11}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 870
    .line 871
    .line 872
    const/16 v4, 0x11

    .line 873
    .line 874
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 875
    .line 876
    .line 877
    const/high16 v4, 0x41800000    # 16.0f

    .line 878
    .line 879
    const/4 v14, 0x1

    .line 880
    invoke-virtual {v3, v14, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 881
    .line 882
    .line 883
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(I)V

    .line 884
    .line 885
    .line 886
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 887
    .line 888
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 889
    .line 890
    .line 891
    invoke-virtual {v3, v14}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 892
    .line 893
    .line 894
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 895
    .line 896
    const/4 v9, -0x1

    .line 897
    invoke-virtual {v13, v3, v9, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 898
    .line 899
    .line 900
    :goto_13
    const/4 v5, 0x0

    .line 901
    goto :goto_14

    .line 902
    :cond_13
    const/4 v3, 0x0

    .line 903
    goto :goto_13

    .line 904
    :goto_14
    iput-object v13, v0, Lcom/mycompany/app/dialog/DialogConfirm;->s0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 905
    .line 906
    move-object/from16 v4, v21

    .line 907
    .line 908
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogConfirm;->t0:Landroid/widget/ImageView;

    .line 909
    .line 910
    move-object/from16 v4, v19

    .line 911
    .line 912
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogConfirm;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 913
    .line 914
    iput-object v15, v0, Lcom/mycompany/app/dialog/DialogConfirm;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 915
    .line 916
    iput-object v8, v0, Lcom/mycompany/app/dialog/DialogConfirm;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 917
    .line 918
    iput-object v10, v0, Lcom/mycompany/app/dialog/DialogConfirm;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 919
    .line 920
    iput-object v7, v0, Lcom/mycompany/app/dialog/DialogConfirm;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 921
    .line 922
    iput-object v6, v0, Lcom/mycompany/app/dialog/DialogConfirm;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 923
    .line 924
    move-object/from16 v4, v24

    .line 925
    .line 926
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogConfirm;->A0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 927
    .line 928
    move-object/from16 v4, v22

    .line 929
    .line 930
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogConfirm;->B0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 931
    .line 932
    move-object/from16 v4, v23

    .line 933
    .line 934
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogConfirm;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 935
    .line 936
    iput-object v12, v0, Lcom/mycompany/app/dialog/DialogConfirm;->D0:Lcom/mycompany/app/view/MyButtonText;

    .line 937
    .line 938
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogConfirm;->E0:Lcom/mycompany/app/view/MyLineFrame;

    .line 939
    .line 940
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogConfirm;->F0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 941
    .line 942
    move-object/from16 v4, v17

    .line 943
    .line 944
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogConfirm;->G0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 945
    .line 946
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogConfirm;->H0:Lcom/mycompany/app/view/MyLineText;

    .line 947
    .line 948
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogConfirm;->I0:Lcom/mycompany/app/view/MyLineText;

    .line 949
    .line 950
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 951
    .line 952
    if-nez v1, :cond_14

    .line 953
    .line 954
    :goto_15
    return-void

    .line 955
    :cond_14
    new-instance v2, Lcom/mycompany/app/dialog/DialogConfirm$7;

    .line 956
    .line 957
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogConfirm$7;-><init>(Lcom/mycompany/app/dialog/DialogConfirm;)V

    .line 958
    .line 959
    .line 960
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 961
    .line 962
    .line 963
    return-void
.end method


# virtual methods
.method public final C(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogConfirm;->H0:Lcom/mycompany/app/view/MyLineText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->H0:Lcom/mycompany/app/view/MyLineText;

    .line 12
    .line 13
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const v0, -0x50506

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const v0, -0xe19938

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->H0:Lcom/mycompany/app/view/MyLineText;

    .line 29
    .line 30
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    const v0, -0x7f7f80

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    const v0, -0x252526

    .line 39
    .line 40
    .line 41
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    .line 43
    .line 44
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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogConfirm;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogConfirm;->s0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->s0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogConfirm;->D0:Lcom/mycompany/app/view/MyButtonText;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonText;->t()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->D0:Lcom/mycompany/app/view/MyButtonText;

    .line 27
    .line 28
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogConfirm;->E0:Lcom/mycompany/app/view/MyLineFrame;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->E0:Lcom/mycompany/app/view/MyLineFrame;

    .line 36
    .line 37
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogConfirm;->F0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->F0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 45
    .line 46
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogConfirm;->H0:Lcom/mycompany/app/view/MyLineText;

    .line 47
    .line 48
    if-eqz v0, :cond_5

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->H0:Lcom/mycompany/app/view/MyLineText;

    .line 54
    .line 55
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogConfirm;->I0:Lcom/mycompany/app/view/MyLineText;

    .line 56
    .line 57
    if-eqz v0, :cond_6

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->I0:Lcom/mycompany/app/view/MyLineText;

    .line 63
    .line 64
    :cond_6
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->a0:Landroid/content/Context;

    .line 65
    .line 66
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->b0:Lcom/mycompany/app/dialog/DialogConfirm$DialogConfListener;

    .line 67
    .line 68
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->c0:Lcom/mycompany/app/dialog/DialogConfirm$DialogConfBtnListener;

    .line 69
    .line 70
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->f0:Ljava/lang/String;

    .line 71
    .line 72
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->g0:Ljava/lang/String;

    .line 73
    .line 74
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->j0:Ljava/lang/String;

    .line 75
    .line 76
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->t0:Landroid/widget/ImageView;

    .line 77
    .line 78
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 79
    .line 80
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 81
    .line 82
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 83
    .line 84
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 85
    .line 86
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 87
    .line 88
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 89
    .line 90
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->A0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 91
    .line 92
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->B0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 93
    .line 94
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 95
    .line 96
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogConfirm;->G0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 97
    .line 98
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 99
    .line 100
    .line 101
    return-void
.end method
