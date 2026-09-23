.class Lcom/mycompany/app/main/image/MainImagePreview$47;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:I

.field public final synthetic g:Lcom/mycompany/app/main/image/MainImagePreview;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImagePreview;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$47;->g:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/image/MainImagePreview$47;->c:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/main/image/MainImagePreview$47;->f:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview$47;->g:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->g1:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->c()V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->t2:Lcom/mycompany/app/view/MySnackbar;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MySnackbar;->i(Z)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->t2:Lcom/mycompany/app/view/MySnackbar;

    .line 21
    .line 22
    :cond_1
    new-instance v1, Lcom/mycompany/app/view/MySnackbar;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MySnackbar;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->t2:Lcom/mycompany/app/view/MySnackbar;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview$47;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iget v3, p0, Lcom/mycompany/app/main/image/MainImagePreview$47;->f:I

    .line 36
    .line 37
    const/4 v4, 0x1

    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    if-ne v3, v4, :cond_2

    .line 41
    .line 42
    sget v1, Lnet/kaki87/soul2/testing/R$string;->save_fail:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    sget v1, Lnet/kaki87/soul2/testing/R$string;->down_fail:I

    .line 46
    .line 47
    :goto_0
    sput-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 48
    .line 49
    iget-object v3, v0, Lcom/mycompany/app/main/image/MainImagePreview;->t2:Lcom/mycompany/app/view/MySnackbar;

    .line 50
    .line 51
    iget-object v4, v0, Lcom/mycompany/app/main/image/MainImagePreview;->g1:Landroid/widget/FrameLayout;

    .line 52
    .line 53
    new-instance v5, Lcom/mycompany/app/main/image/MainImagePreview$47$1;

    .line 54
    .line 55
    invoke-direct {v5, p0}, Lcom/mycompany/app/main/image/MainImagePreview$47$1;-><init>(Lcom/mycompany/app/main/image/MainImagePreview$47;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v4, v1, v5}, Lcom/mycompany/app/view/MySnackbar;->v(Landroid/view/ViewGroup;ILcom/mycompany/app/view/MySnackbar$SnackbarListener;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    if-ne v3, v4, :cond_4

    .line 66
    .line 67
    sget v1, Lnet/kaki87/soul2/testing/R$string;->save_success:I

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    sget v1, Lnet/kaki87/soul2/testing/R$string;->down_complete:I

    .line 71
    .line 72
    :goto_1
    sput-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 73
    .line 74
    iget-object v3, v0, Lcom/mycompany/app/main/image/MainImagePreview;->t2:Lcom/mycompany/app/view/MySnackbar;

    .line 75
    .line 76
    iget-object v5, v0, Lcom/mycompany/app/main/image/MainImagePreview;->g1:Landroid/widget/FrameLayout;

    .line 77
    .line 78
    new-instance v6, Lcom/mycompany/app/main/image/MainImagePreview$47$2;

    .line 79
    .line 80
    invoke-direct {v6, p0}, Lcom/mycompany/app/main/image/MainImagePreview$47$2;-><init>(Lcom/mycompany/app/main/image/MainImagePreview$47;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v5, v1, v4, v6}, Lcom/mycompany/app/view/MySnackbar;->w(Landroid/view/ViewGroup;IILcom/mycompany/app/view/MySnackbar$SnackbarListener;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 87
    .line 88
    .line 89
    return-void
.end method
