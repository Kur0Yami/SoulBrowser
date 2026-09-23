.class Lcom/mycompany/app/dialog/DialogBackupSave$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogBackupSave;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogBackupSave;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogBackupSave;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogBackupSave$21;->c:Lcom/mycompany/app/dialog/DialogBackupSave;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave$21;->c:Lcom/mycompany/app/dialog/DialogBackupSave;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->G0:Lcom/mycompany/app/view/MyProgressBar;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v2, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->I0:I

    .line 9
    .line 10
    iget v3, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->H0:I

    .line 11
    .line 12
    if-le v2, v3, :cond_1

    .line 13
    .line 14
    iput v3, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->I0:I

    .line 15
    .line 16
    :cond_1
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyProgressBar;->setMax(I)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->G0:Lcom/mycompany/app/view/MyProgressBar;

    .line 20
    .line 21
    iget v0, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->I0:I

    .line 22
    .line 23
    int-to-float v0, v0

    .line 24
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
