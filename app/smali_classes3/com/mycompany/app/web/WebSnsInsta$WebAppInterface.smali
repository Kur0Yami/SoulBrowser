.class Lcom/mycompany/app/web/WebSnsInsta$WebAppInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebSnsInsta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebAppInterface"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebSnsInsta;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebSnsInsta;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebSnsInsta$WebAppInterface;->a:Lcom/mycompany/app/web/WebSnsInsta;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDocHtml(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsInsta$WebAppInterface;->a:Lcom/mycompany/app/web/WebSnsInsta;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/mycompany/app/web/WebSnsInsta;->u:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p1, v0, Lcom/mycompany/app/web/WebSnsInsta;->a:Lcom/mycompany/app/main/MainActivity;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v1, Lcom/mycompany/app/web/WebSnsInsta$9;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebSnsInsta$9;-><init>(Lcom/mycompany/app/web/WebSnsInsta;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onInstaData(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsInsta$WebAppInterface;->a:Lcom/mycompany/app/web/WebSnsInsta;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebSnsInsta;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object p1, v0, Lcom/mycompany/app/web/WebSnsInsta;->c:Lcom/mycompany/app/web/WebSnsTask$SnsTaskListener;

    .line 15
    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    check-cast p1, Lcom/mycompany/app/web/WebSnsLoad$10;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/mycompany/app/web/WebSnsLoad$10;->a(Ljava/util/List;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iput-object p1, v0, Lcom/mycompany/app/web/WebSnsInsta;->t:Ljava/lang/String;

    .line 26
    .line 27
    iget-object p1, v0, Lcom/mycompany/app/web/WebSnsInsta;->a:Lcom/mycompany/app/main/MainActivity;

    .line 28
    .line 29
    if-nez p1, :cond_3

    .line 30
    .line 31
    :cond_2
    :goto_0
    return-void

    .line 32
    :cond_3
    new-instance v1, Lcom/mycompany/app/web/WebSnsInsta$7;

    .line 33
    .line 34
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebSnsInsta$7;-><init>(Lcom/mycompany/app/web/WebSnsInsta;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
