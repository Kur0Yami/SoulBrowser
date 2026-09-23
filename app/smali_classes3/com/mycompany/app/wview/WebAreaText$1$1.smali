.class Lcom/mycompany/app/wview/WebAreaText$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/wview/WebAreaText$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/wview/WebAreaText$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/wview/WebAreaText$1$1;->c:Lcom/mycompany/app/wview/WebAreaText$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaText$1$1;->c:Lcom/mycompany/app/wview/WebAreaText$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/wview/WebAreaText$1;->c:Lcom/mycompany/app/wview/WebAreaText;

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/mycompany/app/wview/WebAreaText;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/mycompany/app/wview/WebAreaText;->m:Landroid/content/Context;

    .line 11
    .line 12
    iget-object v2, v0, Lcom/mycompany/app/wview/WebAreaText;->n:Ljava/lang/String;

    .line 13
    .line 14
    sget v3, Lnet/kaki87/soul2/testing/R$string;->copied_clipboard:I

    .line 15
    .line 16
    const-string v4, "Copied Title"

    .line 17
    .line 18
    invoke-static {v3, v1, v4, v2}, Lcom/mycompany/app/main/MainUtil;->s(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-boolean v1, v0, Lcom/mycompany/app/wview/WebAreaText;->o:Z

    .line 23
    .line 24
    return-void
.end method
