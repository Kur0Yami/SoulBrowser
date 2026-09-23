.class Lcom/mycompany/app/dialog/DialogPreview$19$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPreview$19;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPreview$19;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPreview$19$1;->c:Lcom/mycompany/app/dialog/DialogPreview$19;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview$19$1;->c:Lcom/mycompany/app/dialog/DialogPreview$19;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogPreview$19;->c:Lcom/mycompany/app/dialog/DialogPreview;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreview;->e0:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogPreview;->R0:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v1, Lcom/mycompany/app/dialog/DialogPreview$18;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogPreview$18;-><init>(Lcom/mycompany/app/dialog/DialogPreview;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
