.class Lcom/mycompany/app/web/WebViewActivity$407;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$407;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$407;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->D8(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->R6:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->L6()V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/mycompany/app/web/WebViewActivity;->Q0(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->K6:Z

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->K6:Z

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->L6()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->B9()V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method
