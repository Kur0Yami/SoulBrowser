.class Lcom/mycompany/app/main/MainTransLocale$WebAppInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/main/MainTransLocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebAppInterface"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainTransLocale;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTransLocale;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTransLocale$WebAppInterface;->a:Lcom/mycompany/app/main/MainTransLocale;

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
    iget-object v0, p0, Lcom/mycompany/app/main/MainTransLocale$WebAppInterface;->a:Lcom/mycompany/app/main/MainTransLocale;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransLocale;->h:Lcom/mycompany/app/view/MyWebSafe;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-object p1, v0, Lcom/mycompany/app/main/MainTransLocale;->x:Ljava/lang/String;

    .line 9
    .line 10
    new-instance p1, Lcom/mycompany/app/main/MainTransLocale$8;

    .line 11
    .line 12
    invoke-direct {p1, v0}, Lcom/mycompany/app/main/MainTransLocale$8;-><init>(Lcom/mycompany/app/main/MainTransLocale;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainTransLocale;->c(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onObserDet(Ljava/lang/String;I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const/4 p1, 0x1

    .line 2
    iget-object v0, p0, Lcom/mycompany/app/main/MainTransLocale$WebAppInterface;->a:Lcom/mycompany/app/main/MainTransLocale;

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    iput p1, v0, Lcom/mycompany/app/main/MainTransLocale;->m:I

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const/4 v1, 0x3

    .line 10
    iput v1, v0, Lcom/mycompany/app/main/MainTransLocale;->m:I

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-ne p2, v1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p1, 0x0

    .line 17
    :goto_0
    iput-boolean p1, v0, Lcom/mycompany/app/main/MainTransLocale;->n:Z

    .line 18
    .line 19
    :goto_1
    iget-object p1, v0, Lcom/mycompany/app/main/MainTransLocale;->d:Landroid/view/ViewGroup;

    .line 20
    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    new-instance p2, Lcom/mycompany/app/main/MainTransLocale$WebAppInterface$1;

    .line 25
    .line 26
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainTransLocale$WebAppInterface$1;-><init>(Lcom/mycompany/app/main/MainTransLocale$WebAppInterface;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method
