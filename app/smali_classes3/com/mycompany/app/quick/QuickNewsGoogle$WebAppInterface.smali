.class Lcom/mycompany/app/quick/QuickNewsGoogle$WebAppInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/quick/QuickNewsGoogle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebAppInterface"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/quick/QuickNewsGoogle;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickNewsGoogle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickNewsGoogle$WebAppInterface;->a:Lcom/mycompany/app/quick/QuickNewsGoogle;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLoadData(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickNewsGoogle$WebAppInterface;->a:Lcom/mycompany/app/quick/QuickNewsGoogle;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-object p1, v1, Lcom/mycompany/app/quick/QuickNewsGoogle;->E:Ljava/lang/String;

    .line 10
    .line 11
    new-instance p1, Lcom/mycompany/app/quick/QuickNewsGoogle$9;

    .line 12
    .line 13
    invoke-direct {p1, v1}, Lcom/mycompany/app/quick/QuickNewsGoogle$9;-><init>(Lcom/mycompany/app/quick/QuickNewsGoogle;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Lcom/mycompany/app/quick/QuickNews;->d(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    invoke-virtual {v1, p1}, Lcom/mycompany/app/quick/QuickNewsGoogle;->f(Ljava/util/List;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onLoadList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickNewsGoogle$WebAppInterface;->a:Lcom/mycompany/app/quick/QuickNewsGoogle;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-object p1, v1, Lcom/mycompany/app/quick/QuickNewsGoogle;->z:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p2, v1, Lcom/mycompany/app/quick/QuickNewsGoogle;->A:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p3, v1, Lcom/mycompany/app/quick/QuickNewsGoogle;->B:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p4, v1, Lcom/mycompany/app/quick/QuickNewsGoogle;->C:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p5, v1, Lcom/mycompany/app/quick/QuickNewsGoogle;->D:Ljava/lang/String;

    .line 18
    .line 19
    new-instance p1, Lcom/mycompany/app/quick/QuickNewsGoogle$8;

    .line 20
    .line 21
    invoke-direct {p1, v1}, Lcom/mycompany/app/quick/QuickNewsGoogle$8;-><init>(Lcom/mycompany/app/quick/QuickNewsGoogle;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Lcom/mycompany/app/quick/QuickNews;->d(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    invoke-virtual {v1, p1}, Lcom/mycompany/app/quick/QuickNewsGoogle;->f(Ljava/util/List;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
