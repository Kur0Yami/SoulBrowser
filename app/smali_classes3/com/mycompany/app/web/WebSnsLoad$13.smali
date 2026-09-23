.class Lcom/mycompany/app/web/WebSnsLoad$13;
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
.field public final synthetic a:Lcom/mycompany/app/web/WebSnsLoad;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebSnsLoad;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebSnsLoad$13;->a:Lcom/mycompany/app/web/WebSnsLoad;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->X6(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const-string v4, "MP4"

    .line 24
    .line 25
    invoke-direct {v2, v3, v1, v4}, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, v2, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->b:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-object v1, v0

    .line 34
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/web/WebSnsLoad$13;->a:Lcom/mycompany/app/web/WebSnsLoad;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Lcom/mycompany/app/web/WebSnsLoad;->e(Ljava/util/List;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    iget-object p1, p1, Lcom/mycompany/app/web/WebSnsLoad;->d:Landroid/view/ViewGroup;

    .line 49
    .line 50
    if-nez p1, :cond_2

    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    new-instance v0, Lcom/mycompany/app/web/WebSnsLoad$13$1;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebSnsLoad$13$1;-><init>(Lcom/mycompany/app/web/WebSnsLoad$13;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    return-void
.end method
