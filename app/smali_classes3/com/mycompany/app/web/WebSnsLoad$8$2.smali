.class Lcom/mycompany/app/web/WebSnsLoad$8$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebSnsLoad$8;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebSnsLoad$8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebSnsLoad$8$2;->c:Lcom/mycompany/app/web/WebSnsLoad$8;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsLoad$8$2;->c:Lcom/mycompany/app/web/WebSnsLoad$8;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebSnsLoad$8;->a:Lcom/mycompany/app/web/WebSnsLoad;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebSnsLoad;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebSnsLoad;->m:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget v1, v0, Lcom/mycompany/app/web/WebSnsLoad;->j:I

    .line 19
    .line 20
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->J2(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iput-object v1, v0, Lcom/mycompany/app/web/WebSnsLoad;->m:Ljava/lang/String;

    .line 25
    .line 26
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebSnsLoad;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 27
    .line 28
    iget-object v2, v0, Lcom/mycompany/app/web/WebSnsLoad;->m:Ljava/lang/String;

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    invoke-static {v1, v2, v3}, Lcom/mycompany/app/main/MainUtil;->J(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    iget-object v1, v0, Lcom/mycompany/app/web/WebSnsLoad;->D:Ljava/lang/Runnable;

    .line 35
    .line 36
    iget-object v2, v0, Lcom/mycompany/app/web/WebSnsLoad;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 37
    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    iget-object v0, v0, Lcom/mycompany/app/web/WebSnsLoad;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 44
    .line 45
    const-wide/16 v2, 0x3e8

    .line 46
    .line 47
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_0
    return-void
.end method
