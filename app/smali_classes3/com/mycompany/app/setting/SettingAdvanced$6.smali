.class Lcom/mycompany/app/setting/SettingAdvanced$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingAdvanced;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingAdvanced;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingAdvanced$6;->c:Lcom/mycompany/app/setting/SettingAdvanced;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    sget p1, Lcom/mycompany/app/setting/SettingAdvanced;->c2:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingAdvanced$6;->c:Lcom/mycompany/app/setting/SettingAdvanced;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingAdvanced;->a2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogListBook;->dismiss()V

    .line 11
    .line 12
    .line 13
    iput-object v1, p1, Lcom/mycompany/app/setting/SettingAdvanced;->a2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1, v1}, Lcom/mycompany/app/setting/CastActivity;->C0(Lcom/mycompany/app/dialog/DialogListBook;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
