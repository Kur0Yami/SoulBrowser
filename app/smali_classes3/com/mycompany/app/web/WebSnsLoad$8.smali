.class Lcom/mycompany/app/web/WebSnsLoad$8;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebSnsLoad$8;->a:Lcom/mycompany/app/web/WebSnsLoad;

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
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsLoad$8;->a:Lcom/mycompany/app/web/WebSnsLoad;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebSnsLoad;->i:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const-wide/16 v3, 0x190

    .line 19
    .line 20
    if-nez v2, :cond_3

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    iput p1, v0, Lcom/mycompany/app/web/WebSnsLoad;->s:I

    .line 31
    .line 32
    iget-object p1, v0, Lcom/mycompany/app/web/WebSnsLoad;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 33
    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    new-instance v0, Lcom/mycompany/app/web/WebSnsLoad$8$2;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebSnsLoad$8$2;-><init>(Lcom/mycompany/app/web/WebSnsLoad$8;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_3
    :goto_0
    iget-object p1, v0, Lcom/mycompany/app/web/WebSnsLoad;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 47
    .line 48
    if-nez p1, :cond_4

    .line 49
    .line 50
    :goto_1
    return-void

    .line 51
    :cond_4
    new-instance v0, Lcom/mycompany/app/web/WebSnsLoad$8$1;

    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebSnsLoad$8$1;-><init>(Lcom/mycompany/app/web/WebSnsLoad$8;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    .line 58
    .line 59
    return-void
.end method
