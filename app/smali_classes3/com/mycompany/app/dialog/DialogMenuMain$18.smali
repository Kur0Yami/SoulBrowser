.class Lcom/mycompany/app/dialog/DialogMenuMain$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MenuIconAdapter;

.field public final synthetic f:[I

.field public final synthetic g:Lcom/mycompany/app/dialog/DialogMenuMain;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogMenuMain;Lcom/mycompany/app/main/MenuIconAdapter;[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogMenuMain$18;->g:Lcom/mycompany/app/dialog/DialogMenuMain;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogMenuMain$18;->c:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogMenuMain$18;->f:[I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuMain$18;->g:Lcom/mycompany/app/dialog/DialogMenuMain;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->l0:Lcom/mycompany/app/view/MyDialogMenu;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuMain$18;->f:[I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogMenuMain$18;->c:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 12
    .line 13
    invoke-virtual {v2, v0, v1}, Lcom/mycompany/app/main/MenuIconAdapter;->H([IZ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
