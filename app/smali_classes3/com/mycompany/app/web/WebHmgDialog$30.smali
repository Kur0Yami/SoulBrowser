.class Lcom/mycompany/app/web/WebHmgDialog$30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebHmgDialog;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebHmgDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebHmgDialog$30;->c:Lcom/mycompany/app/web/WebHmgDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgDialog$30;->c:Lcom/mycompany/app/web/WebHmgDialog;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebHmgDialog;->j0:Ljava/util/List;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-nez v3, :cond_1

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v4}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-lt v2, v1, :cond_2

    .line 44
    .line 45
    const/4 v3, 0x1

    .line 46
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebHmgDialog;->Z:Z

    .line 47
    .line 48
    :cond_2
    iget-object v0, v0, Lcom/mycompany/app/web/WebHmgDialog;->Y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 49
    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    return-void

    .line 53
    :cond_3
    new-instance v3, Lcom/mycompany/app/web/WebHmgDialog$30$1;

    .line 54
    .line 55
    invoke-direct {v3, p0, v2, v1}, Lcom/mycompany/app/web/WebHmgDialog$30$1;-><init>(Lcom/mycompany/app/web/WebHmgDialog$30;II)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    return-void
.end method
