.class Lcom/mycompany/app/main/MainTransText$WebAppInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/main/MainTransText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebAppInterface"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainTransText;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTransText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTransText$WebAppInterface;->a:Lcom/mycompany/app/main/MainTransText;

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
    iget-object v0, p0, Lcom/mycompany/app/main/MainTransText$WebAppInterface;->a:Lcom/mycompany/app/main/MainTransText;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransText;->g:Lcom/mycompany/app/view/MyWebSafe;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-object p1, v0, Lcom/mycompany/app/main/MainTransText;->v:Ljava/lang/String;

    .line 9
    .line 10
    new-instance p1, Lcom/mycompany/app/main/MainTransText$9;

    .line 11
    .line 12
    invoke-direct {p1, v0}, Lcom/mycompany/app/main/MainTransText$9;-><init>(Lcom/mycompany/app/main/MainTransText;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainTransText;->c(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onObserDet(Ljava/lang/String;I)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/main/MainTransText$WebAppInterface;->a:Lcom/mycompany/app/main/MainTransText;

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    iput v0, v1, Lcom/mycompany/app/main/MainTransText;->l:I

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const/4 v2, 0x3

    .line 10
    iput v2, v1, Lcom/mycompany/app/main/MainTransText;->l:I

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    if-ne p2, v2, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    :goto_0
    iput-boolean v0, v1, Lcom/mycompany/app/main/MainTransText;->m:Z

    .line 18
    .line 19
    sget-object p2, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-eqz p2, :cond_2

    .line 26
    .line 27
    sput-object p1, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 28
    .line 29
    const-string p2, ""

    .line 30
    .line 31
    sput-object p2, Lcom/mycompany/app/pref/PrefAlbum;->z:Ljava/lang/String;

    .line 32
    .line 33
    iget-object p2, v1, Lcom/mycompany/app/main/MainTransText;->b:Landroid/content/Context;

    .line 34
    .line 35
    invoke-static {p2}, Lcom/mycompany/app/pref/PrefAlbum;->u(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object p2, v1, Lcom/mycompany/app/main/MainTransText;->n:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    iput-object p1, v1, Lcom/mycompany/app/main/MainTransText;->n:Ljava/lang/String;

    .line 48
    .line 49
    :cond_3
    :goto_1
    iget-object p1, v1, Lcom/mycompany/app/main/MainTransText;->d:Landroid/view/ViewGroup;

    .line 50
    .line 51
    if-nez p1, :cond_4

    .line 52
    .line 53
    return-void

    .line 54
    :cond_4
    new-instance p2, Lcom/mycompany/app/main/MainTransText$WebAppInterface$1;

    .line 55
    .line 56
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainTransText$WebAppInterface$1;-><init>(Lcom/mycompany/app/main/MainTransText$WebAppInterface;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 60
    .line 61
    .line 62
    return-void
.end method
