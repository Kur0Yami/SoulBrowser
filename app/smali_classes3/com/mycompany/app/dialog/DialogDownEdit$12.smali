.class Lcom/mycompany/app/dialog/DialogDownEdit$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownEdit;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownEdit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownEdit$12;->c:Lcom/mycompany/app/dialog/DialogDownEdit;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownEdit$12;->c:Lcom/mycompany/app/dialog/DialogDownEdit;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->D0:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->D0:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->u0:Lcom/mycompany/app/dialog/DialogDownPage$DownPageListener;

    .line 9
    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->b0:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-static {v3, v4, v2, v1}, Lcom/mycompany/app/main/MainUri;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->E0:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 23
    .line 24
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    new-instance v1, Lcom/mycompany/app/dialog/DialogDownEdit$12$1;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogDownEdit$12$1;-><init>(Lcom/mycompany/app/dialog/DialogDownEdit$12;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method
