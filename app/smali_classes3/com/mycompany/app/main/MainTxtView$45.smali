.class Lcom/mycompany/app/main/MainTxtView$45;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:Lcom/mycompany/app/main/MainTxtView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTxtView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTxtView$45;->f:Lcom/mycompany/app/main/MainTxtView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/MainTxtView$45;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView$45;->f:Lcom/mycompany/app/main/MainTxtView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->C1:Lcom/mycompany/app/view/MyMainRelative;

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
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->W2:Lcom/mycompany/app/view/MySnackbar;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MySnackbar;->i(Z)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->W2:Lcom/mycompany/app/view/MySnackbar;

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
    iput-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->W2:Lcom/mycompany/app/view/MySnackbar;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/mycompany/app/main/MainTxtView$45;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->W2:Lcom/mycompany/app/view/MySnackbar;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/mycompany/app/main/MainTxtView;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 40
    .line 41
    sget v2, Lnet/kaki87/soul2/testing/R$string;->save_fail:I

    .line 42
    .line 43
    new-instance v3, Lcom/mycompany/app/main/MainTxtView$45$1;

    .line 44
    .line 45
    invoke-direct {v3, p0}, Lcom/mycompany/app/main/MainTxtView$45$1;-><init>(Lcom/mycompany/app/main/MainTxtView$45;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0, v2, v3}, Lcom/mycompany/app/view/MySnackbar;->v(Landroid/view/ViewGroup;ILcom/mycompany/app/view/MySnackbar$SnackbarListener;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->W2:Lcom/mycompany/app/view/MySnackbar;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/mycompany/app/main/MainTxtView;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 55
    .line 56
    sget v2, Lnet/kaki87/soul2/testing/R$string;->save_success:I

    .line 57
    .line 58
    new-instance v3, Lcom/mycompany/app/main/MainTxtView$45$2;

    .line 59
    .line 60
    invoke-direct {v3, p0}, Lcom/mycompany/app/main/MainTxtView$45$2;-><init>(Lcom/mycompany/app/main/MainTxtView$45;)V

    .line 61
    .line 62
    .line 63
    const/4 v4, 0x1

    .line 64
    invoke-virtual {v1, v0, v2, v4, v3}, Lcom/mycompany/app/view/MySnackbar;->w(Landroid/view/ViewGroup;IILcom/mycompany/app/view/MySnackbar$SnackbarListener;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
