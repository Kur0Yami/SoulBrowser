.class Lcom/mycompany/app/setting/SettingVideoSub$34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/setting/SettingVideoSub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingVideoSub;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingVideoSub;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingVideoSub$34;->c:Lcom/mycompany/app/setting/SettingVideoSub;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVideoSub$34;->c:Lcom/mycompany/app/setting/SettingVideoSub;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->o2:Landroid/widget/SeekBar;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v2, 0x0

    .line 9
    iput-boolean v2, v0, Lcom/mycompany/app/setting/SettingVideoSub;->L2:Z

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget v2, v0, Lcom/mycompany/app/setting/SettingVideoSub;->B2:I

    .line 16
    .line 17
    if-eq v2, v1, :cond_1

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/mycompany/app/setting/SettingVideoSub;->D0(Lcom/mycompany/app/setting/SettingVideoSub;I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method
