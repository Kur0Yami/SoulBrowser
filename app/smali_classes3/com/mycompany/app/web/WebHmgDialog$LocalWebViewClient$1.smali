.class Lcom/mycompany/app/web/WebHmgDialog$LocalWebViewClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebHmgDialog$LocalWebViewClient;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebHmgDialog$LocalWebViewClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebHmgDialog$LocalWebViewClient$1;->c:Lcom/mycompany/app/web/WebHmgDialog$LocalWebViewClient;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgDialog$LocalWebViewClient$1;->c:Lcom/mycompany/app/web/WebHmgDialog$LocalWebViewClient;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebHmgDialog$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebHmgDialog;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebHmgDialog;->g0:Lcom/mycompany/app/web/WebNestView;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v2, 0x0

    .line 11
    iput v2, v0, Lcom/mycompany/app/web/WebHmgDialog;->e0:I

    .line 12
    .line 13
    iget-object v0, v0, Lcom/mycompany/app/web/WebHmgDialog;->h0:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v1, v0, v2}, Lcom/mycompany/app/web/WebNestView;->z(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
