.class Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$15b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$15b;->c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$15b;->c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;

    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;->b:Lcom/mycompany/app/web/WebViewActivity;

    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->kh:Ljava/lang/String;

    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->kl:Ljava/lang/String;

    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->ll:Ljava/lang/String;

    iget-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->ml:Ljava/lang/String;

    iget-wide v5, v1, Lcom/mycompany/app/web/WebViewActivity;->nl:J

    const/4 v7, 0x0

    iput-object v7, v1, Lcom/mycompany/app/web/WebViewActivity;->kh:Ljava/lang/String;

    iput-object v7, v1, Lcom/mycompany/app/web/WebViewActivity;->kl:Ljava/lang/String;

    iput-object v7, v1, Lcom/mycompany/app/web/WebViewActivity;->ll:Ljava/lang/String;

    iput-object v7, v1, Lcom/mycompany/app/web/WebViewActivity;->ml:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "filename"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_2

    :cond_1
    const-string v3, "\\"

    const-string v8, "\\\\"

    invoke-virtual {v0, v3, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "\""

    const-string v8, "\\\""

    invoke-virtual {v0, v3, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "attachment; filename=\""

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    const/4 v8, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-wide v4, v5

    move v6, v8

    invoke-virtual/range {v0 .. v7}, Lcom/mycompany/app/web/WebViewActivity;->l9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    return-void
.end method
