.class Lcom/mycompany/app/web/WebSnsLoad$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebSnsLoad$10;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebSnsLoad$10;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebSnsLoad$10$1;->c:Lcom/mycompany/app/web/WebSnsLoad$10;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsLoad$10$1;->c:Lcom/mycompany/app/web/WebSnsLoad$10;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebSnsLoad$10;->a:Lcom/mycompany/app/web/WebSnsLoad;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebSnsLoad;->v:Lcom/mycompany/app/web/WebSnsInsta;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebSnsInsta;->d()V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, v0, Lcom/mycompany/app/web/WebSnsLoad;->v:Lcom/mycompany/app/web/WebSnsInsta;

    .line 14
    .line 15
    :cond_0
    iget v1, v0, Lcom/mycompany/app/web/WebSnsLoad;->o:I

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    if-ne v1, v2, :cond_3

    .line 19
    .line 20
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebSnsLoad;->q:Z

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebSnsLoad;->n:Lcom/mycompany/app/web/WebNestView;

    .line 26
    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    :goto_0
    return-void

    .line 30
    :cond_2
    new-instance v2, Lcom/mycompany/app/web/WebSnsLoad$13;

    .line 31
    .line 32
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebSnsLoad$13;-><init>(Lcom/mycompany/app/web/WebSnsLoad;)V

    .line 33
    .line 34
    .line 35
    const-string v0, "(function(){var vds=document.querySelectorAll(\"video\");if(vds&&(vds.length>0)){for(var i=0;i<vds.length;i++){if(!vds[i].paused){return vds[i].src;}}}return null;})();"

    .line 36
    .line 37
    invoke-virtual {v1, v0, v2}, Lcom/mycompany/app/web/WebNestView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/web/WebSnsLoad;->c:Lcom/mycompany/app/web/WebSnsLoad$SnsLoadListener;

    .line 42
    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    invoke-interface {v1}, Lcom/mycompany/app/web/WebSnsLoad$SnsLoadListener;->b()V

    .line 46
    .line 47
    .line 48
    :cond_4
    invoke-static {v0}, Lcom/mycompany/app/web/WebSnsLoad;->b(Lcom/mycompany/app/web/WebSnsLoad;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
