.class Lcom/mycompany/app/web/WebViewActivity$503;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$503;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$503;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->O4()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$503;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/web/WebViewActivity;->Na:Lcom/mycompany/app/wview/WebFltView;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/web/WebViewActivity;->Ga:Ljava/util/ArrayList;

    .line 10
    .line 11
    if-eqz v0, :cond_5

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    div-int/lit8 v2, p2, 0x2

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-lt v2, v3, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 34
    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    rem-int/lit8 p2, p2, 0x2

    .line 39
    .line 40
    if-nez p2, :cond_4

    .line 41
    .line 42
    iget-object p2, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 43
    .line 44
    sget v0, Lnet/kaki87/soul2/testing/R$string;->copied_clipboard:I

    .line 45
    .line 46
    const-string v2, "Copied username"

    .line 47
    .line 48
    invoke-static {v0, p1, v2, p2}, Lcom/mycompany/app/main/MainUtil;->s(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v1

    .line 52
    :cond_4
    iget-object p2, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 53
    .line 54
    sget v0, Lnet/kaki87/soul2/testing/R$string;->copied_clipboard:I

    .line 55
    .line 56
    const-string v2, "Copied password"

    .line 57
    .line 58
    invoke-static {v0, p1, v2, p2}, Lcom/mycompany/app/main/MainUtil;->s(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_5
    :goto_0
    return v1
.end method
