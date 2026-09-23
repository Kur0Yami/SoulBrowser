.class Lcom/mycompany/app/setting/SettingDisplay$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingDisplay;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingDisplay;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingDisplay$21;->c:Lcom/mycompany/app/setting/SettingDisplay;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDisplay$21;->c:Lcom/mycompany/app/setting/SettingDisplay;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingDisplay;->g2:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget v1, Lcom/mycompany/app/pref/PrefEditor;->D:I

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/setting/SettingActivity;->I0(IZ)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
