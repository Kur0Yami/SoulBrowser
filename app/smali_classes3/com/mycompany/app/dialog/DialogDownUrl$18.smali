.class Lcom/mycompany/app/dialog/DialogDownUrl$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownUrl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownUrl$18;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownUrl$18;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->k2:I

    .line 4
    .line 5
    iget v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->o1:I

    .line 6
    .line 7
    const/4 v3, 0x5

    .line 8
    if-ne v2, v3, :cond_0

    .line 9
    .line 10
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->W0:Lcom/mycompany/app/dialog/DialogDownUrl$DownPosterListener;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->T0:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {v2, v3}, Lcom/mycompany/app/dialog/DialogDownUrl$DownPosterListener;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->X0:Ljava/lang/String;

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->Y0:Z

    .line 30
    .line 31
    :cond_0
    invoke-static {v0, v1}, Lcom/mycompany/app/dialog/DialogDownUrl;->F(Lcom/mycompany/app/dialog/DialogDownUrl;I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
