.class Lcom/mycompany/app/setting/SettingHandArea$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingHandArea;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingHandArea;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingHandArea$3;->c:Lcom/mycompany/app/setting/SettingHandArea;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    sget p1, Lcom/mycompany/app/setting/SettingHandArea;->Z1:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHandArea$3;->c:Lcom/mycompany/app/setting/SettingHandArea;

    .line 4
    .line 5
    iget v0, p1, Lcom/mycompany/app/setting/SettingHandArea;->X1:I

    .line 6
    .line 7
    sget v1, Lcom/mycompany/app/pref/PrefTts;->J:I

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingHandArea;->H0()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
