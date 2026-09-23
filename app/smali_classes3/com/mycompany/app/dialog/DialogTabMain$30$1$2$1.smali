.class Lcom/mycompany/app/dialog/DialogTabMain$30$1$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabMain$30$1$2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMain$30$1$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$30$1$2$1;->c:Lcom/mycompany/app/dialog/DialogTabMain$30$1$2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$30$1$2$1;->c:Lcom/mycompany/app/dialog/DialogTabMain$30$1$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMain$30$1$2;->f:Lcom/mycompany/app/dialog/DialogTabMain$30$1;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain$30$1;->c:Lcom/mycompany/app/dialog/DialogTabMain$30;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogTabMain$30;->a:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 8
    .line 9
    sget-object v2, Lcom/mycompany/app/dialog/DialogTabMain;->l1:[I

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogTabMain;->B()V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMain$30$1;->c:Lcom/mycompany/app/dialog/DialogTabMain$30;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMain$30;->a:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMain;->H:Landroid/content/Context;

    .line 19
    .line 20
    sget v1, Lnet/kaki87/soul2/testing/R$string;->deleted:I

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
