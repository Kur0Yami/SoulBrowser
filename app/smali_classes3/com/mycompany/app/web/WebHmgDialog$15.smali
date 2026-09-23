.class Lcom/mycompany/app/web/WebHmgDialog$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebHmgDialog$15;->c:Lcom/mycompany/app/web/WebHmgDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebHmgDialog$15;->c:Lcom/mycompany/app/web/WebHmgDialog;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/web/WebHmgDialog;->H:Landroid/content/Context;

    .line 4
    .line 5
    sget v0, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
