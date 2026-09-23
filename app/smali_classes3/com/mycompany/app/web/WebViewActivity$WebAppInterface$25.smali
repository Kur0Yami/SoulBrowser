.class Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;->onObserDet(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$25;->c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$25;->c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;->b:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    sget v1, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->D8(Z)V

    .line 9
    .line 10
    .line 11
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->H6:I

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->N6:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->N6:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->O6:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$25$1;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$25$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$25;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    sget-object v1, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 52
    .line 53
    if-nez v1, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$400;

    .line 57
    .line 58
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$400;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 59
    .line 60
    .line 61
    const-string v3, "document.cookie"

    .line 62
    .line 63
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/web/WebNestView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$25$2;

    .line 67
    .line 68
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$25$2;-><init>(Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$25;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method
