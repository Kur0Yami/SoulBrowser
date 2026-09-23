.class Lcom/mycompany/app/dialog/DialogBackupSave$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetMsg$DialogMsgListener;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/mycompany/app/dialog/DialogBackupSave;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogBackupSave;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogBackupSave$23;->b:Lcom/mycompany/app/dialog/DialogBackupSave;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogBackupSave$23;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget-object v0, Lcom/mycompany/app/dialog/DialogBackupSave;->V0:[Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave$23;->b:Lcom/mycompany/app/dialog/DialogBackupSave;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogBackupSave;->G()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupSave$23;->a:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/dialog/DialogBackupSave;->D(Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method
