.class Lcom/mycompany/app/web/WebSearchAdapter$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Lcom/mycompany/app/web/WebSearchAdapter$6;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebSearchAdapter$6;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebSearchAdapter$6$1;->f:Lcom/mycompany/app/web/WebSearchAdapter$6;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/web/WebSearchAdapter$6$1;->c:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter$6$1;->f:Lcom/mycompany/app/web/WebSearchAdapter$6;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebSearchAdapter$6;->c:Lcom/mycompany/app/web/WebSearchAdapter;

    .line 4
    .line 5
    iget v1, p0, Lcom/mycompany/app/web/WebSearchAdapter$6$1;->c:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebSearchAdapter;->x(I)Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v2, v1, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->e:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    iget-object v1, v1, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->e:Ljava/lang/String;

    .line 23
    .line 24
    const-string v2, "Copied URL"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v1, v1, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 28
    .line 29
    const-string v2, "Copied text"

    .line 30
    .line 31
    :goto_0
    iget-object v3, v0, Lcom/mycompany/app/web/WebSearchAdapter;->d:Lcom/mycompany/app/web/WebViewActivity;

    .line 32
    .line 33
    sget v4, Lnet/kaki87/soul2/testing/R$string;->copied_clipboard:I

    .line 34
    .line 35
    invoke-static {v4, v3, v2, v1}, Lcom/mycompany/app/main/MainUtil;->v(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, v0, Lcom/mycompany/app/web/WebSearchAdapter;->e:Lcom/mycompany/app/web/WebSearchAdapter$WebSearchListener;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    check-cast v0, Lcom/mycompany/app/web/WebViewActivity$250;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity$250;->e(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_1
    return-void
.end method
