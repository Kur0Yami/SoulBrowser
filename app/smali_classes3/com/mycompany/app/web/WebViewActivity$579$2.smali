.class Lcom/mycompany/app/web/WebViewActivity$579$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Lcom/mycompany/app/web/WebViewActivity$579;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$579;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$579$2;->h:Lcom/mycompany/app/web/WebViewActivity$579;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/web/WebViewActivity$579$2;->c:I

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/web/WebViewActivity$579$2;->f:I

    .line 9
    .line 10
    iput p4, p0, Lcom/mycompany/app/web/WebViewActivity$579$2;->g:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$579$2;->h:Lcom/mycompany/app/web/WebViewActivity$579;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$579;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget v2, v1, Lcom/mycompany/app/web/WebViewActivity;->c9:I

    .line 6
    .line 7
    iget v3, p0, Lcom/mycompany/app/web/WebViewActivity$579$2;->f:I

    .line 8
    .line 9
    iget v4, p0, Lcom/mycompany/app/web/WebViewActivity$579$2;->c:I

    .line 10
    .line 11
    if-ne v2, v4, :cond_0

    .line 12
    .line 13
    iget v2, v1, Lcom/mycompany/app/web/WebViewActivity;->d9:I

    .line 14
    .line 15
    if-eq v2, v3, :cond_1

    .line 16
    .line 17
    :cond_0
    iput v4, v1, Lcom/mycompany/app/web/WebViewActivity;->c9:I

    .line 18
    .line 19
    iput v3, v1, Lcom/mycompany/app/web/WebViewActivity;->d9:I

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->t3()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity$579;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/mycompany/app/web/WebViewActivity;->b3()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/web/WebViewActivity;->o8(II)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$579;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 35
    .line 36
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e9:I

    .line 37
    .line 38
    iget v2, p0, Lcom/mycompany/app/web/WebViewActivity$579$2;->g:I

    .line 39
    .line 40
    if-eq v1, v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->V8()V

    .line 43
    .line 44
    .line 45
    :cond_2
    return-void
.end method
