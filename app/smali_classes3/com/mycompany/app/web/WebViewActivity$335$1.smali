.class Lcom/mycompany/app/web/WebViewActivity$335$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Lcom/mycompany/app/main/MainItem$ChildItem;

.field public final synthetic g:Lcom/mycompany/app/web/WebViewActivity$335;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$335;ILcom/mycompany/app/main/MainItem$ChildItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$335$1;->g:Lcom/mycompany/app/web/WebViewActivity$335;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/web/WebViewActivity$335$1;->c:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/web/WebViewActivity$335$1;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$335$1;->g:Lcom/mycompany/app/web/WebViewActivity$335;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$335;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x1

    .line 7
    iget-object v3, p0, Lcom/mycompany/app/web/WebViewActivity$335$1;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iget v5, p0, Lcom/mycompany/app/web/WebViewActivity$335$1;->c:I

    .line 11
    .line 12
    if-ne v5, v1, :cond_0

    .line 13
    .line 14
    iget-object v1, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 15
    .line 16
    sget v3, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 17
    .line 18
    invoke-virtual {v0, v4, v1, v2, v4}, Lcom/mycompany/app/web/WebViewActivity;->O1(Lcom/mycompany/app/web/WebNestFrame;Ljava/lang/String;ZLcom/mycompany/app/web/WebViewActivity$TabAddListener;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const/4 v1, 0x4

    .line 23
    if-ne v5, v1, :cond_1

    .line 24
    .line 25
    iget-object v1, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 26
    .line 27
    sget v2, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 28
    .line 29
    invoke-virtual {v0, v1, v4}, Lcom/mycompany/app/web/WebViewActivity;->L1(Ljava/lang/String;Lcom/mycompany/app/web/WebViewActivity$TabAddListener;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    const/4 v1, 0x5

    .line 34
    if-ne v5, v1, :cond_2

    .line 35
    .line 36
    iget-object v1, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 37
    .line 38
    sget v2, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->G1(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    const/16 v1, 0x20

    .line 45
    .line 46
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->A6(I)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    iget-object v1, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v4, v1, v2, v4}, Lcom/mycompany/app/web/WebViewActivity;->O1(Lcom/mycompany/app/web/WebNestFrame;Ljava/lang/String;ZLcom/mycompany/app/web/WebViewActivity$TabAddListener;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    iget-object v1, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v1, v4}, Lcom/mycompany/app/web/WebViewActivity;->S5(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
