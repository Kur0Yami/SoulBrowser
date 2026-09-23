.class Lcom/mycompany/app/web/WebVideoImage$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoImage;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoImage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoImage$8;->c:Lcom/mycompany/app/web/WebVideoImage;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoImage$8;->c:Lcom/mycompany/app/web/WebVideoImage;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoImage;->h:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget v1, v0, Lcom/mycompany/app/web/WebVideoImage;->m:I

    .line 9
    .line 10
    const/4 v2, 0x6

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, v3}, Lcom/mycompany/app/web/WebVideoImage;->B(Z)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->j5()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoImage;->h:Lcom/mycompany/app/web/WebNestView;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestView;->getUrl()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v2, v0, Lcom/mycompany/app/web/WebVideoImage;->h:Lcom/mycompany/app/web/WebNestView;

    .line 35
    .line 36
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->J1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-static {v2, v1, v3, v4}, Lcom/mycompany/app/main/MainUtil;->i7(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoImage;->g:Landroid/view/ViewGroup;

    .line 45
    .line 46
    if-nez v1, :cond_3

    .line 47
    .line 48
    :goto_1
    return-void

    .line 49
    :cond_3
    new-instance v2, Lcom/mycompany/app/web/WebVideoImage$9;

    .line 50
    .line 51
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebVideoImage$9;-><init>(Lcom/mycompany/app/web/WebVideoImage;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 55
    .line 56
    .line 57
    return-void
.end method
