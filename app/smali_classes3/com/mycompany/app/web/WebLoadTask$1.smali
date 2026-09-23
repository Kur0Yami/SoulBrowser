.class Lcom/mycompany/app/web/WebLoadTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebLoadTask;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebLoadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebLoadTask$1;->a:Lcom/mycompany/app/web/WebLoadTask;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebLoadTask$1;->a:Lcom/mycompany/app/web/WebLoadTask;

    .line 4
    .line 5
    iput-object p1, v0, Lcom/mycompany/app/web/WebLoadTask;->g:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p1, v0, Lcom/mycompany/app/web/WebLoadTask;->b:Landroid/webkit/WebView;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v0, Lcom/mycompany/app/web/WebLoadTask$1$1;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebLoadTask$1$1;-><init>(Lcom/mycompany/app/web/WebLoadTask$1;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
