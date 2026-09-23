.class Lcom/mycompany/app/web/WebHmgDialog$22$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebHmgDialog$22$1$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebHmgDialog$22$1$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebHmgDialog$22$1$1$1$1;->c:Lcom/mycompany/app/web/WebHmgDialog$22$1$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgDialog$22$1$1$1$1;->c:Lcom/mycompany/app/web/WebHmgDialog$22$1$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebHmgDialog$22$1$1$1;->c:Lcom/mycompany/app/web/WebHmgDialog$22$1$1;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/web/WebHmgDialog$22$1$1;->c:Lcom/mycompany/app/web/WebHmgDialog$22$1;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/web/WebHmgDialog$22$1;->c:Lcom/mycompany/app/web/WebHmgDialog$22;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/mycompany/app/web/WebHmgDialog$22;->c:Lcom/mycompany/app/web/WebHmgDialog;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/mycompany/app/web/WebHmgDialog;->g0:Lcom/mycompany/app/web/WebNestView;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    iput v2, v0, Lcom/mycompany/app/web/WebHmgDialog;->e0:I

    .line 18
    .line 19
    iget-object v0, v0, Lcom/mycompany/app/web/WebHmgDialog;->h0:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v1, v0, v2}, Lcom/mycompany/app/web/WebNestView;->z(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
