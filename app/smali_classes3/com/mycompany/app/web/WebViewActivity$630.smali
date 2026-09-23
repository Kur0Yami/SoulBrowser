.class Lcom/mycompany/app/web/WebViewActivity$630;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogListBook$ListDcListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$630;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILcom/mycompany/app/main/MainItem$ChildItem;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$630;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->ib:Lcom/mycompany/app/dialog/DialogListBook;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v1, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v1, v2, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v2, 0x0

    .line 15
    :goto_0
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Jn:Z

    .line 16
    .line 17
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Nn:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Kn:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v1, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 22
    .line 23
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Ln:Ljava/lang/String;

    .line 24
    .line 25
    iget-object p2, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->j:Ljava/lang/String;

    .line 26
    .line 27
    iput-object p2, v0, Lcom/mycompany/app/web/WebViewActivity;->Mn:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v0, p1}, Lcom/mycompany/app/web/WebViewActivity;->Y0(Lcom/mycompany/app/web/WebViewActivity;I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$630;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->Vn:Ljava/util/List;

    .line 4
    .line 5
    iput-object p2, v0, Lcom/mycompany/app/web/WebViewActivity;->Wn:Ljava/util/List;

    .line 6
    .line 7
    new-instance p1, Lcom/mycompany/app/web/WebViewActivity$630$1;

    .line 8
    .line 9
    invoke-direct {p1, p0}, Lcom/mycompany/app/web/WebViewActivity$630$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$630;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$630;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/mycompany/app/web/WebViewActivity;->Y2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
