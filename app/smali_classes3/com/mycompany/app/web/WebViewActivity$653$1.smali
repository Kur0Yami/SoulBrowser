.class Lcom/mycompany/app/web/WebViewActivity$653$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$653;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$653;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$653$1;->c:Lcom/mycompany/app/web/WebViewActivity$653;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$653$1;->c:Lcom/mycompany/app/web/WebViewActivity$653;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$653;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->U4()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    sget v1, Lcom/mycompany/app/pref/PrefTts;->F:I

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    sget v1, Lcom/mycompany/app/pref/PrefTts;->G:I

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$653;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->t3()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity$653;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebViewActivity;->u3()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity$653;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 37
    .line 38
    invoke-virtual {v3, v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->W8(II)V

    .line 39
    .line 40
    .line 41
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$653;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->b3()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->o8(II)V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_0
    return-void
.end method
