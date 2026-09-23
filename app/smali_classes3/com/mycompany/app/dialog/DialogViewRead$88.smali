.class Lcom/mycompany/app/dialog/DialogViewRead$88;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewRead;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$88;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$88;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->y:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v2, 0x1

    .line 9
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogViewRead;->a2:Z

    .line 10
    .line 11
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewRead$WebAppInterface;

    .line 12
    .line 13
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogViewRead$WebAppInterface;-><init>(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "android"

    .line 17
    .line 18
    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
