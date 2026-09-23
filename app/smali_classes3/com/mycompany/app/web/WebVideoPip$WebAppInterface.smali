.class Lcom/mycompany/app/web/WebVideoPip$WebAppInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebVideoPip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebAppInterface"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebVideoPip;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoPip;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoPip$WebAppInterface;->a:Lcom/mycompany/app/web/WebVideoPip;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onYouLoaded(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "1"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoPip$WebAppInterface;->a:Lcom/mycompany/app/web/WebVideoPip;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Lcom/mycompany/app/web/WebVideoPip;->b(Lcom/mycompany/app/web/WebVideoPip;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const/4 p1, 0x1

    .line 16
    iput p1, v0, Lcom/mycompany/app/web/WebVideoPip;->r:I

    .line 17
    .line 18
    iget-object p1, v0, Lcom/mycompany/app/web/WebVideoPip;->f:Landroid/content/Context;

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    new-instance p1, Lcom/mycompany/app/web/WebVideoPip$7;

    .line 24
    .line 25
    invoke-direct {p1, v0}, Lcom/mycompany/app/web/WebVideoPip$7;-><init>(Lcom/mycompany/app/web/WebVideoPip;)V

    .line 26
    .line 27
    .line 28
    const-wide/16 v1, 0x64

    .line 29
    .line 30
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onYouPaused(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "1"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoPip$WebAppInterface;->a:Lcom/mycompany/app/web/WebVideoPip;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x3

    .line 12
    iput p1, v0, Lcom/mycompany/app/web/WebVideoPip;->r:I

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x2

    .line 16
    iput p1, v0, Lcom/mycompany/app/web/WebVideoPip;->r:I

    .line 17
    .line 18
    :goto_0
    invoke-static {v0}, Lcom/mycompany/app/web/WebVideoPip;->g(Lcom/mycompany/app/web/WebVideoPip;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
