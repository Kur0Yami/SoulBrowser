.class Lcom/mycompany/app/main/image/MainImagePreview$41$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:Lcom/mycompany/app/main/image/MainImagePreview$41;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImagePreview$41;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$41$1;->f:Lcom/mycompany/app/main/image/MainImagePreview$41;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/image/MainImagePreview$41$1;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview$41$1;->f:Lcom/mycompany/app/main/image/MainImagePreview$41;

    .line 4
    .line 5
    iget-object v3, v1, Lcom/mycompany/app/main/image/MainImagePreview$41;->c:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 6
    .line 7
    iget-object v1, v3, Lcom/mycompany/app/main/image/MainImagePreview;->r1:Lcom/mycompany/app/view/MyCoverView;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/mycompany/app/main/image/MainImagePreview;->V0()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v3}, Lcom/mycompany/app/main/image/MainImagePreview;->J0()V

    .line 23
    .line 24
    .line 25
    iput-boolean v2, v3, Lcom/mycompany/app/main/image/MainImagePreview;->S1:Z

    .line 26
    .line 27
    sput-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 28
    .line 29
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 30
    .line 31
    iget-object v4, v3, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v5, v3, Lcom/mycompany/app/main/image/MainImagePreview;->z1:Ljava/lang/String;

    .line 34
    .line 35
    iget-wide v9, v3, Lcom/mycompany/app/main/image/MainImagePreview;->Q1:J

    .line 36
    .line 37
    new-instance v1, Lcom/mycompany/app/main/image/MainImagePreview$33;

    .line 38
    .line 39
    invoke-direct {v1, v3}, Lcom/mycompany/app/main/image/MainImagePreview$33;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 40
    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    iget-object v8, v0, Lcom/mycompany/app/main/image/MainImagePreview$41$1;->c:Ljava/lang/String;

    .line 45
    .line 46
    const/4 v11, 0x4

    .line 47
    const/4 v12, 0x0

    .line 48
    const/4 v13, 0x0

    .line 49
    const/4 v14, 0x0

    .line 50
    const/4 v15, 0x0

    .line 51
    const/16 v16, 0x0

    .line 52
    .line 53
    const/16 v17, 0x0

    .line 54
    .line 55
    move-object/from16 v18, v1

    .line 56
    .line 57
    invoke-direct/range {v2 .. v18}, Lcom/mycompany/app/dialog/DialogDownUrl;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/util/List;ILjava/util/List;ZILcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;)V

    .line 58
    .line 59
    .line 60
    iput-object v2, v3, Lcom/mycompany/app/main/image/MainImagePreview;->D1:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 61
    .line 62
    new-instance v1, Lcom/mycompany/app/main/image/MainImagePreview$34;

    .line 63
    .line 64
    invoke-direct {v1, v3}, Lcom/mycompany/app/main/image/MainImagePreview$34;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    :goto_0
    return-void
.end method
