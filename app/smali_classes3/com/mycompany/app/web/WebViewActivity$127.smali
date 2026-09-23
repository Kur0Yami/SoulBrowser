.class Lcom/mycompany/app/web/WebViewActivity$127;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$127;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$127;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->If:I

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Jf:Lcom/mycompany/app/web/WebNestFrame;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Jf:Lcom/mycompany/app/web/WebNestFrame;

    .line 9
    .line 10
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->O2:Ljava/util/List;

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    if-eqz v4, :cond_1

    .line 14
    .line 15
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iput v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Kf:I

    .line 23
    .line 24
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Lf:Lcom/mycompany/app/web/WebNestFrame;

    .line 25
    .line 26
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$128;

    .line 27
    .line 28
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebViewActivity$128;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->x8(Lcom/mycompany/app/web/WebViewActivity$TabViewListener;)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    invoke-static {}, Lcom/mycompany/app/web/WebViewActivity;->o3()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v0, v3, v4, v5, v3}, Lcom/mycompany/app/web/WebViewActivity;->O1(Lcom/mycompany/app/web/WebNestFrame;Ljava/lang/String;ZLcom/mycompany/app/web/WebViewActivity$TabAddListener;)V

    .line 40
    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Lcom/mycompany/app/web/WebViewActivity;->P9(Lcom/mycompany/app/web/WebNestFrame;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->B2(I)V

    .line 48
    .line 49
    .line 50
    :goto_1
    iput-boolean v5, v0, Lcom/mycompany/app/web/WebViewActivity;->yc:Z

    .line 51
    .line 52
    return-void
.end method
