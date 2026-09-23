.class Lcom/mycompany/app/web/WebViewActivity$84;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyEditAuto$KeyBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$84;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ZZ)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$84;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->Y()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->G3:Lcom/mycompany/app/quick/QuickSubView;

    .line 12
    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    if-nez p2, :cond_1

    .line 16
    .line 17
    if-eqz p1, :cond_4

    .line 18
    .line 19
    :cond_1
    invoke-virtual {v1}, Lcom/mycompany/app/quick/QuickSubView;->h()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    invoke-virtual {v1}, Lcom/mycompany/app/quick/QuickSubView;->c()V

    .line 27
    .line 28
    .line 29
    return v2

    .line 30
    :cond_3
    iget-boolean p1, v0, Lcom/mycompany/app/web/WebViewActivity;->j9:Z

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    if-eqz p1, :cond_7

    .line 34
    .line 35
    iget-boolean p1, v0, Lcom/mycompany/app/web/WebViewActivity;->k9:Z

    .line 36
    .line 37
    if-eqz p1, :cond_6

    .line 38
    .line 39
    iget-object p1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 40
    .line 41
    if-nez p1, :cond_5

    .line 42
    .line 43
    :cond_4
    :goto_0
    return v2

    .line 44
    :cond_5
    new-instance p2, Lcom/mycompany/app/web/WebViewActivity$248;

    .line 45
    .line 46
    invoke-direct {p2, v0}, Lcom/mycompany/app/web/WebViewActivity$248;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 47
    .line 48
    .line 49
    const-wide/16 v0, 0xc8

    .line 50
    .line 51
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    .line 53
    .line 54
    return v2

    .line 55
    :cond_6
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->E7(Z)V

    .line 56
    .line 57
    .line 58
    return v2

    .line 59
    :cond_7
    if-nez p2, :cond_8

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_8
    iget-boolean p1, v0, Lcom/mycompany/app/web/WebViewActivity;->L3:Z

    .line 63
    .line 64
    if-eqz p1, :cond_9

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->K3()V

    .line 67
    .line 68
    .line 69
    return v2

    .line 70
    :cond_9
    :goto_1
    return v1
.end method
