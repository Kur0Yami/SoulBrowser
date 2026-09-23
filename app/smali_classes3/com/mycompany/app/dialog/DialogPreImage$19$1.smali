.class Lcom/mycompany/app/dialog/DialogPreImage$19$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPreImage$19;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPreImage$19;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPreImage$19$1;->c:Lcom/mycompany/app/dialog/DialogPreImage$19;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreImage$19$1;->c:Lcom/mycompany/app/dialog/DialogPreImage$19;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogPreImage$19;->c:Lcom/mycompany/app/dialog/DialogPreImage;

    .line 4
    .line 5
    sget v1, Lcom/mycompany/app/dialog/DialogPreImage;->w0:I

    .line 6
    .line 7
    new-instance v1, Lcom/mycompany/app/dialog/DialogPreImage$18;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogPreImage$18;-><init>(Lcom/mycompany/app/dialog/DialogPreImage;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
