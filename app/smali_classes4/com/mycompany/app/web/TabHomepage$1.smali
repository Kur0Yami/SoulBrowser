.class Lcom/mycompany/app/web/TabHomepage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogConfirm$DialogConfListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;

.field public final synthetic b:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

.field public final synthetic c:Ljava/lang/String;

.field public d:Lcom/mycompany/app/dialog/DialogConfirm;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mycompany/app/web/TabHomepage$1;->a:Lcom/mycompany/app/web/WebViewActivity;

    iput-object p2, p0, Lcom/mycompany/app/web/TabHomepage$1;->b:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    iput-object p3, p0, Lcom/mycompany/app/web/TabHomepage$1;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    iget-object p1, p0, Lcom/mycompany/app/web/TabHomepage$1;->d:Lcom/mycompany/app/dialog/DialogConfirm;

    if-eqz p1, :cond_dismiss

    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogConfirm;->dismiss()V

    :cond_dismiss
    iget-object p1, p0, Lcom/mycompany/app/web/TabHomepage$1;->a:Lcom/mycompany/app/web/WebViewActivity;

    iget-object v0, p0, Lcom/mycompany/app/web/TabHomepage$1;->b:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    iget-object v1, p0, Lcom/mycompany/app/web/TabHomepage$1;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-object v1, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->r:Ljava/lang/String;

    iget-object v2, p1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    iget-wide v3, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    invoke-static {v2, v3, v4, v1}, Lcom/mycompany/app/db/book/DbBookTab;->B(Landroid/content/Context;JLjava/lang/String;)V

    sget v0, Lnet/kaki87/soul2/testing/R$string;->tab_homepage_set:I

    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    return-void
.end method
