.class Lcom/mycompany/app/web/WebGridDialog$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebGridDialog;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebGridDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebGridDialog$5;->c:Lcom/mycompany/app/web/WebGridDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebGridDialog$5;->c:Lcom/mycompany/app/web/WebGridDialog;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/web/WebGridDialog;->H:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v1, p1, Lcom/mycompany/app/web/WebGridDialog;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 6
    .line 7
    sget v2, Lnet/kaki87/soul2/testing/R$anim;->ic_rotate:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {v0, v1, v2, v3}, Lcom/mycompany/app/main/MainUtil;->h8(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p1, Lcom/mycompany/app/web/WebGridDialog;->R:Lcom/mycompany/app/view/MyProgressBar;

    .line 14
    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    iget-boolean v0, v0, Lcom/mycompany/app/view/MyProgressBar;->A:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {}, Lcom/mycompany/app/web/WebLoadTask;->c()Lcom/mycompany/app/web/WebLoadTask;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v0, v0, Lcom/mycompany/app/web/WebLoadTask;->b:Landroid/webkit/WebView;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/web/WebGridDialog;->g0:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebGridDialog;->G()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    iput-boolean v3, p1, Lcom/mycompany/app/web/WebGridDialog;->z0:Z

    .line 44
    .line 45
    iput v3, p1, Lcom/mycompany/app/web/WebGridDialog;->f0:I

    .line 46
    .line 47
    const-wide/16 v0, 0x0

    .line 48
    .line 49
    iput-wide v0, p1, Lcom/mycompany/app/web/WebGridDialog;->w0:J

    .line 50
    .line 51
    iput-boolean v3, p1, Lcom/mycompany/app/web/WebGridDialog;->x0:Z

    .line 52
    .line 53
    iput v3, p1, Lcom/mycompany/app/web/WebGridDialog;->d0:I

    .line 54
    .line 55
    const/4 v0, -0x1

    .line 56
    invoke-virtual {p1, v0}, Lcom/mycompany/app/web/WebGridDialog;->A(I)V

    .line 57
    .line 58
    .line 59
    :cond_3
    :goto_0
    return-void
.end method
