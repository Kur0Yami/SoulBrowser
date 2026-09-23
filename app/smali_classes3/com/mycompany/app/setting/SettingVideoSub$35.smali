.class Lcom/mycompany/app/setting/SettingVideoSub$35;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingVideoSub;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingVideoSub;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingVideoSub$35;->a:Lcom/mycompany/app/setting/SettingVideoSub;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingVideoSub;->W2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVideoSub$35;->a:Lcom/mycompany/app/setting/SettingVideoSub;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingVideoSub;->I0()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/mycompany/app/main/MainConst;->q:[I

    .line 12
    .line 13
    const/4 v2, 0x7

    .line 14
    aget v1, v1, v2

    .line 15
    .line 16
    sget-object v3, Lcom/mycompany/app/main/MainConst;->p:[F

    .line 17
    .line 18
    aget v2, v3, v2

    .line 19
    .line 20
    const/16 v3, 0x14

    .line 21
    .line 22
    iput v3, v0, Lcom/mycompany/app/setting/SettingVideoSub;->u2:I

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    iput v3, v0, Lcom/mycompany/app/setting/SettingVideoSub;->v2:I

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    iput v3, v0, Lcom/mycompany/app/setting/SettingVideoSub;->w2:I

    .line 29
    .line 30
    iput v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->x2:I

    .line 31
    .line 32
    iput v2, v0, Lcom/mycompany/app/setting/SettingVideoSub;->y2:F

    .line 33
    .line 34
    iput-boolean v3, v0, Lcom/mycompany/app/setting/SettingVideoSub;->A2:Z

    .line 35
    .line 36
    iput v3, v0, Lcom/mycompany/app/setting/SettingVideoSub;->B2:I

    .line 37
    .line 38
    iput v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->C2:I

    .line 39
    .line 40
    iput v2, v0, Lcom/mycompany/app/setting/SettingVideoSub;->D2:F

    .line 41
    .line 42
    invoke-static {v1, v3}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    iput v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->z2:I

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingVideoSub;->L0()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v3}, Lcom/mycompany/app/setting/SettingVideoSub;->M0(Z)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
