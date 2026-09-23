.class Lcom/mycompany/app/web/WebViewActivity$122;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$122;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$122;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Df:Lcom/mycompany/app/web/WebNestFrame;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Df:Lcom/mycompany/app/web/WebNestFrame;

    .line 7
    .line 8
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->O2:Ljava/util/List;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz v3, :cond_1

    .line 12
    .line 13
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Ef:Lcom/mycompany/app/web/WebNestFrame;

    .line 21
    .line 22
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$123;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebViewActivity$123;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->x8(Lcom/mycompany/app/web/WebViewActivity$TabViewListener;)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    invoke-static {}, Lcom/mycompany/app/web/WebViewActivity;->o3()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v0, v2, v3, v4, v2}, Lcom/mycompany/app/web/WebViewActivity;->O1(Lcom/mycompany/app/web/WebNestFrame;Ljava/lang/String;ZLcom/mycompany/app/web/WebViewActivity$TabAddListener;)V

    .line 36
    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->P9(Lcom/mycompany/app/web/WebNestFrame;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->f8()V

    .line 44
    .line 45
    .line 46
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Ac:Z

    .line 47
    .line 48
    return-void
.end method
