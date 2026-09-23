.class Lcom/mycompany/app/web/WebLoadTask$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebLoadTask$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebLoadTask$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebLoadTask$1$1;->c:Lcom/mycompany/app/web/WebLoadTask$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebLoadTask$1$1;->c:Lcom/mycompany/app/web/WebLoadTask$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebLoadTask$1;->a:Lcom/mycompany/app/web/WebLoadTask;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebLoadTask;->g:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-object v2, v0, Lcom/mycompany/app/web/WebLoadTask;->g:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v2, v0, Lcom/mycompany/app/web/WebLoadTask;->b:Landroid/webkit/WebView;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->X6(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->k8(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, v0, Lcom/mycompany/app/web/WebLoadTask;->h:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v1, v0, Lcom/mycompany/app/web/WebLoadTask;->b:Landroid/webkit/WebView;

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    :goto_0
    return-void

    .line 30
    :cond_1
    new-instance v2, Lcom/mycompany/app/web/WebLoadTask$2;

    .line 31
    .line 32
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebLoadTask$2;-><init>(Lcom/mycompany/app/web/WebLoadTask;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method
