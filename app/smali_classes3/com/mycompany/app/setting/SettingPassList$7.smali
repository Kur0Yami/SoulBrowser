.class Lcom/mycompany/app/setting/SettingPassList$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingPassAdapter$PassListListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingPassList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingPassList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingPassList$7;->a:Lcom/mycompany/app/setting/SettingPassList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILcom/mycompany/app/main/MainItem$ChildItem;Z)V
    .locals 9

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingPassList$7;->a:Lcom/mycompany/app/setting/SettingPassList;

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    invoke-static {v1, p1, p2}, Lcom/mycompany/app/setting/SettingPassList;->O0(Lcom/mycompany/app/setting/SettingPassList;ILcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    sget p3, Lcom/mycompany/app/setting/SettingPassList;->t2:I

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingPassList;->S0()Z

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    if-eqz p3, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingPassList;->R0()V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/mycompany/app/dialog/DialogPassInfo;

    .line 22
    .line 23
    iget-wide v2, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 24
    .line 25
    iget-object v4, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v5, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v6, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v7, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 32
    .line 33
    new-instance v8, Lcom/mycompany/app/setting/SettingPassList$14;

    .line 34
    .line 35
    invoke-direct {v8, v1, p1}, Lcom/mycompany/app/setting/SettingPassList$14;-><init>(Lcom/mycompany/app/setting/SettingPassList;I)V

    .line 36
    .line 37
    .line 38
    invoke-direct/range {v0 .. v8}, Lcom/mycompany/app/dialog/DialogPassInfo;-><init>(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogPassInfo$PassInfoListener;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingPassList;->h2:Lcom/mycompany/app/dialog/DialogPassInfo;

    .line 42
    .line 43
    new-instance p1, Lcom/mycompany/app/setting/SettingPassList$15;

    .line 44
    .line 45
    invoke-direct {p1, v1}, Lcom/mycompany/app/setting/SettingPassList$15;-><init>(Lcom/mycompany/app/setting/SettingPassList;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
