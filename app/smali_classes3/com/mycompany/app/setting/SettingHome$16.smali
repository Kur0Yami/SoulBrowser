.class Lcom/mycompany/app/setting/SettingHome$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/quick/QuickAddAdapter$QuickListListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingHome;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingHome;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingHome$16;->a:Lcom/mycompany/app/setting/SettingHome;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome$16;->a:Lcom/mycompany/app/setting/SettingHome;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingHome;->a2:Lcom/mycompany/app/view/MyEditText;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
